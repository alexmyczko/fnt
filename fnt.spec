Summary: 	Font manager command line tool
Name: 		fnt
Version: 	1.3
Release: 	1
License: 	MIT
Group:		System/Utilities
Source:		%{name}-%{version}.tar.gz
URL:		https://github.com/alexmyczko/fnt
BuildRoot:	%{_tmppath}/%{name}-%{version}-build
BuildArch:	noarch

%description
Search, preview, and download more than 1800 fonts as user. It can download
fonts from Debian sid and Google Web fonts repositories.
       
%prep
%setup

%build

%install
[ -d %{buildroot} -a "%{buildroot}" != "" ] && rm -rf  %{buildroot}

make DESTDIR=%{buildroot} MANDIR=%{buildroot}%{_mandir} install

%clean
[ -d %{buildroot} -a "%{buildroot}" != "" ] && rm -rf  %{buildroot}

%files
%defattr(-, root, root)
%doc LICENSE README.md
%{_bindir}/fnt
%{_mandir}/man1/*

%changelog
* Sun Feb 28 2021 Alex Myczko
- Initial RPM release.
