#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource, NSTableViewDelegate>
{
    NSWindow *window;
    NSTableView *tableView;
    NSImageView *imageView;
    NSMutableArray *fontList;
}
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)notification {
    fontList = [[NSMutableArray alloc] init];

    // Create window
    NSRect frame = NSMakeRect(100, 100, 800, 600);
    window = [[NSWindow alloc] initWithContentRect:frame
                                          styleMask:(NSWindowStyleMaskTitled |
                                                     NSWindowStyleMaskResizable |
                                                     NSWindowStyleMaskClosable)
                                            backing:NSBackingStoreBuffered
                                              defer:NO];
    [window setTitle:@"FNT"];
    [window makeKeyAndOrderFront:nil];

    [[NSProcessInfo processInfo] setProcessName:@"FNT"];

    NSImage *icon = [[NSImage alloc] initWithContentsOfFile:@"fnt.png"];
    [window setMiniwindowImage:icon];

    // Split view (vertical: left and right)
    NSSplitView *splitView = [[NSSplitView alloc] initWithFrame:[[window contentView] bounds]];
    [splitView setVertical:YES]; // LEFT-RIGHT split
    [splitView setAutoresizingMask:NSViewWidthSizable | NSViewHeightSizable];
    [splitView setDividerStyle:NSSplitViewDividerStyleThin];

    // Left: ScrollView with TableView
    NSScrollView *scrollView = [[NSScrollView alloc] initWithFrame:NSMakeRect(0, 0, 200, 600)];
    [scrollView setAutoresizingMask:NSViewWidthSizable | NSViewHeightSizable];
    tableView = [[NSTableView alloc] initWithFrame:scrollView.bounds];

    NSTableColumn *column = [[NSTableColumn alloc] initWithIdentifier:@"FontColumn"];
    [column setTitle:@"Fonts"];
    [column setWidth:200];
    [tableView addTableColumn:column];
    [tableView setDelegate:self];
    [tableView setDataSource:self];
    [scrollView setDocumentView:tableView];
    [scrollView setHasVerticalScroller:YES];

    // Right: ImageView
    imageView = [[NSImageView alloc] initWithFrame:NSMakeRect(0, 0, 600, 600)];
    [imageView setImageScaling:NSImageScaleProportionallyUpOrDown];
    [imageView setAutoresizingMask:NSViewWidthSizable | NSViewHeightSizable];

    // Add subviews to split view
    [splitView addSubview:scrollView];
    [splitView addSubview:imageView];

    [[window contentView] addSubview:splitView];

    [self buildMenu];
    [self loadFontList];
}

- (void)buildMenu {
    NSMenu *mainMenu = [[NSMenu alloc] init];
    NSMenuItem *appMenuItem = [[NSMenuItem alloc] init];
    [mainMenu addItem:appMenuItem];
    [NSApp setMainMenu:mainMenu];

    // App Menu (named after app)
    NSString *appName = @"FNT";
    NSMenu *appMenu = [[NSMenu alloc] initWithTitle:appName];

    // About
    NSMenuItem *aboutItem = [[NSMenuItem alloc] initWithTitle:[NSString stringWithFormat:@"About %@", appName]
                                                       action:@selector(showAbout)
                                                keyEquivalent:@""];
    [aboutItem setTarget:self];
    [appMenu addItem:aboutItem];

    // Update
    NSMenuItem *updateItem = [[NSMenuItem alloc] initWithTitle:@"Update Fonts"
                                                        action:@selector(runUpdate)
                                                 keyEquivalent:@"u"];
    [updateItem setTarget:self];
    [appMenu addItem:updateItem];

    [appMenu addItem:[NSMenuItem separatorItem]];

    // Quit
    NSMenuItem *quitItem = [[NSMenuItem alloc] initWithTitle:[NSString stringWithFormat:@"Quit %@", appName]
                                                      action:@selector(terminate:)
                                               keyEquivalent:@"q"];
    [appMenu addItem:quitItem];

    // Attach submenu
    [appMenuItem setSubmenu:appMenu];
}

/*
- (void)buildMenu {
    NSMenu *menubar = [[NSMenu alloc] init];
    NSMenuItem *appMenuItem = [[NSMenuItem alloc] init];
    [menubar addItem:appMenuItem];
    [NSApp setMainMenu:menubar];

    NSMenu *appMenu = [[NSMenu alloc] init];

    // About
    NSMenuItem *aboutItem = [[NSMenuItem alloc] initWithTitle:@"About"
                                                       action:@selector(showAbout)
                                                keyEquivalent:@""];
    [aboutItem setTarget:self];
    [appMenu addItem:aboutItem];

    // Update
    NSMenuItem *updateItem = [[NSMenuItem alloc] initWithTitle:@"Update Fonts"
                                                        action:@selector(runUpdate)
                                                 keyEquivalent:@"u"];
    [updateItem setTarget:self];
    [appMenu addItem:updateItem];

    [appMenu addItem:[NSMenuItem separatorItem]];

    // Quit
    NSMenuItem *quitItem = [[NSMenuItem alloc] initWithTitle:@"Quit"
                                                      action:@selector(terminate:)
                                               keyEquivalent:@"q"];
    [appMenu addItem:quitItem];

    [appMenuItem setSubmenu:appMenu];
}
*/

- (void)showAbout {
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:@"FNT"];
    [alert setInformativeText:@"Created by Alex Myczko <tar@debian.org>\nhttps://github.com/alexmyczko/fnt/"];
    [alert addButtonWithTitle:@"OK"];
    [alert runModal];
}

- (void)runUpdate {
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:@"/usr/bin/env"];
    [task setArguments:@[@"fnt", @"update"]];

    [task launch];
    [task waitUntilExit];

    [self loadFontList];
}

- (void)loadFontList {
    [fontList removeAllObjects];

    NSLog(@"fnt search...");

    NSPipe *pipe = [NSPipe pipe];
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:@"/usr/bin/env"];
    [task setArguments:@[@"fnt", @"search"]];
    [task setStandardOutput:pipe];

    NSFileHandle *handle = [pipe fileHandleForReading];
    [task launch];
    [task waitUntilExit];

    NSData *data = [handle readDataToEndOfFile];
    NSString *output = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSArray *lines = [output componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];

    for (NSString *line in lines) {
        if ([line length] > 0) {
            [fontList addObject:line];
        }
    }

    NSLog(@"fnt search... done");

    [tableView reloadData];
}

#pragma mark - TableView Data Source

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [fontList count];
}

- (NSView *)tableView:(NSTableView *)tableView
   viewForTableColumn:(NSTableColumn *)tableColumn
                  row:(NSInteger)row {
    NSTextField *cell = [tableView makeViewWithIdentifier:@"Cell" owner:self];
    if (!cell) {
        cell = [[NSTextField alloc] initWithFrame:NSMakeRect(0, 0, 200, 20)];
        [cell setIdentifier:@"Cell"];
        [cell setBezeled:NO];
        [cell setDrawsBackground:NO];
        [cell setEditable:NO];
        [cell setSelectable:NO];
    }

    [cell setStringValue:fontList[row]];
    return cell;
}

#pragma mark - TableView Delegate

- (void)tableViewSelectionDidChange:(NSNotification *)notification {
    NSInteger selectedRow = [tableView selectedRow];
    if (selectedRow < 0 || selectedRow >= [fontList count]) return;

    NSString *fontName = fontList[selectedRow];

    // Remove "fonts-" or "google-" prefix
    NSString *cleanFontName = fontName;
    if ([cleanFontName hasPrefix:@"fonts-"]) {
        cleanFontName = [cleanFontName substringFromIndex:6];
    } else if ([cleanFontName hasPrefix:@"google-"]) {
        cleanFontName = [cleanFontName substringFromIndex:7];
    }

    NSLog(@"Previewing font: %@", cleanFontName);

    // Run `fnt preview <cleanFontName>`
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:@"/usr/bin/env"];
    [task setArguments:@[@"fnt", @"preview", cleanFontName]];

    // Redirect output to /dev/null to avoid blocking
    NSFileHandle *nullFile = [NSFileHandle fileHandleForWritingAtPath:@"/dev/null"];
    if (nullFile) {
	[task setStandardOutput:nullFile];
	[task setStandardError:nullFile];
    }
    [task launch];
    [task waitUntilExit];

    // Load image from ~/.fnt/preview.png
    NSLog(@"Downloaded preview, showing now...");
    NSString *imagePath = [NSHomeDirectory() stringByAppendingPathComponent:@".fnt/preview.png"];
    if ([[NSFileManager defaultManager] fileExistsAtPath:imagePath]) {
        NSImage *image = [[NSImage alloc] initWithContentsOfFile:imagePath];
        [imageView setImage:image];
    } else {
        NSLog(@"Preview image not found at %@", imagePath);
        [imageView setImage:nil];
    }
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [NSApplication sharedApplication];
        AppDelegate *delegate = [[AppDelegate alloc] init];
        [NSApp setDelegate:delegate];
        [NSApp run];
    }
    return 0;
}
