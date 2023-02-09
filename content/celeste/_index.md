# Celeste
Celeste is a GUI file synchronization client that can connect to virtually any cloud provider.

- Backed by [rclone](https://rclone.org/), giving you a reliable and battle-tested way to sync your files anywhere
- Written with GTK4 and Libadwaita, giving Celeste a native look and feel on your desktop
- Written in Rust, making Celeste ***blazingly fast*** to use

![](https://raw.githubusercontent.com/hwittenborn/celeste/main/assets/main-window.png)

## Features
- Two-way sync
- Asking what to do when a local and remote file have both been updated since last sync
- Ability to exclude files/folders from sync
- Connecting to multiple cloud providers at the same time

## Supported cloud providers
Celeste can currently connect to the following cloud providers:
- Dropbox
- Google Drive
- Nextcloud
- Owncloud
- pCloud
- WebDAV

## Installation
Celeste can be installed via the methods listed below:

### Flatpak
Celeste is available on [Flathub](https://flathub.org/apps/details/com.hunterwittenborn.Celeste). First make sure you have [set up Flatpak](https://flatpak.org/setup/) on your system, and then run the following:

```sh
flatpak install flathub com.hunterwittenborn.Celeste
```

### Snap
Celeste is available on the [Snap Store](https://snapcraft.io/celeste), which can be installed on any system that has Snap installed.

```sh
snap install celeste
```

### Prebuilt-MPR (Debian/Ubuntu)
If you're on Ubuntu 22.10 or later, you can install Celeste from the Prebuilt-MPR. First make sure [the Prebuilt-MPR is set up](https://docs.makedeb.org/prebuilt-mpr/getting-started/) on your system, and then run the following:

```sh
sudo apt install celeste
```

## Privacy policy
View Celeste's privacy policy here: [https://hunterwittenborn.com/celeste/privacy-policy](/celeste/privacy-policy).
