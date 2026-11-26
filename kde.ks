# Kickstart file for composing the "Qubes" spin of Fedora

# Package manifest for the compose.  Uses repo group metadata to translate groups.
# (@base is added by default unless you add --nobase to %packages)
# (default groups for the configured repos are added by --default)

repo --name=fedora --gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-41-primary --ignoregroups=true --metalink=https://mirrors.fedoraproject.org/metalink?repo=fedora-41&arch=x86_64
repo --name=fedora-updates --gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-41-primary --ignoregroups=true --metalink=https://mirrors.fedoraproject.org/metalink?repo=updates-released-f41&arch=x86_64
repo --name=installer --baseurl=file:///tmp/qubes-installer/yum/installer/
repo --name=qubes-host --baseurl=file:///tmp/qubes-installer/yum/qubes-host/

%packages
@core
@standard
@base-x --nodefaults
@xfce-desktop-qubes
@xfce-extra-plugins
@kde-desktop-qubes
@fonts
@hardware-support
@qubes
@qubes-ui
@anaconda-tools
@fedora
@debian
@whonix
kernel-latest
kernel-latest-qubes-vm
# weaks dependencies
-adobe-source-code-pro-fonts
-bluez
-compat-f32-dejavu-sans-fonts
-compat-f32-dejavu-sans-mono-fonts
-compat-f32-dejavu-serif-fonts
# -crypto-policies-scripts
-deltarpm
-dnfdaemon-selinux
-fips-mode-setup
-flac
-fwupd-plugin-flashrom
-fwupd-plugin-modem-manager
-gcc-gdb-plugin
-geolite2-city
-geolite2-country
-gnupg2-smime
-grubby
-gstreamer1-plugins-good-qt
-lame
-libsss_autofs
-libsss_sudo
-libxcrypt-compat
-libyui-gtk
-libyui-mga-gtk
-libyui-mga-qt
-libyui-qt
-libyui-qt-graph
-mkpasswd
-ntfs-3g-system-compression
-oddjob-mkhomedir
-openssl-pkcs11
-opus-tools
-perl-IO-Compress
-perl-Math-BigInt
-pigz
-python-systemd-doc
-python-unversioned-command
-python3-unbound
-rpm-plugin-systemd-inhibit
-sssd-nfs-idmap
-systemd-networkd
-systemd-resolved
-trousers
-wl-clipboard
-xorg-x11-fonts-misc
# selected dependencies
-blueberry
-gnome-bluetooth
-gnome-bluetooth-libs
%end
# Full ISO build using packages from online repositories instead of local build

repo --name=qubes-r4.3 --gpgkey=file:///tmp/qubes-installer/qubes-release/RPM-GPG-KEY-qubes-4.3-primary --baseurl=http://yum.qubes-os.org/r4.3/current/host/fc41 --ignoregroups=true
repo --name=qubes-r4.3-templates-itl --gpgkey=file:///tmp/qubes-installer/qubes-release/RPM-GPG-KEY-qubes-4.3-primary --metalink=http://yum.qubes-os.org/r4.3/templates-itl/repodata/repomd.xml.metalink --ignoregroups=true
repo --name=qubes-r4.3-templates-community --gpgkey=file:///tmp/qubes-installer/qubes-release/RPM-GPG-KEY-qubes-4.3-templates-community --metalink=http://yum.qubes-os.org/r4.3/templates-community/repodata/repomd.xml.metalink --ignoregroups=true

