# cachyos-hyprland

A simple script to be run after installing CachyOS to enable a starter Hyprland environment.

I created this as a replacement for the now deprecated [`cachyos-hyprland-settings`](https://packages.cachyos.org/package/cachyos/any/cachyos-hyprland-settings) package that offered a lightly configured environment to start in rather than a completely vanilla experience. Whichever is suitable for you depends on your level of knowledge, but most beginners will have an easier time loading this script to experiment in a pre-built environment.

### Installation Instructions
1. Run the CachyOS Installer and do whatever you wish until you get to the desktop environment selection.
2. It is not important that you select Hyprland as your desktop environment. In fact, it's probably best if you don't select one at all("No Desktop"). The script will install all of the necessary packages.
3. Do whatever you want in the Additional Packages section as long as you don't select any desktop environment software. I'd also advise leaving the `cachyos-wallpapers` package checked unless you will be immediately changing the wallpapers in the login greeter(`nwg-look`) and the desktop background(`hyprpaper`).
4. Complete the installation.
5. You will reboot into a `tty` since we selected no display manager package in the installer. Log in.
6. Clone the git repository:
```
git clone https://codeberg.org/dirge/cachyos-hyprland.git
```
7. Navigate into the base directory just created:
```
cd cachyos-hyprland
```
8. Allow `install.sh` to be run as an executable:
```
chmod 755 install.sh
```
9.  Run the script:
```
./install.sh
```
10. It will ask you to authenticate a couple times. Once for package installation and the other for moving `greetd` into position so it is used next time you boot.
11. Reboot
```
systemctl reboot
```
And then you're done

### Software Used
* **Wayland Compositor:** `hyprland`(duh)
* **Display Manager:** `greetd` and `nwg-look`
* **Authentication Agent:** `hyprpolkitagent`
* **Notification Daemon:** `mako`
* **File Manager:** `thunar`
* **Application Launcher:** `fuzzel`
* **Status Bar:** `waybar`
* **Clipboard Daemon:** `cliphist`
* **Screenshot Utility:** `grimblast-git`
* **Session Menu:** `wlogout`
* **Lockscreen:** `hyprlock`
* **Idle Handler:** `hypridle`
* **Theme Management:** `nwg-look`(GTK), `qt6ct`(QT), and `kvantum`(QT)
* **Themes:** `materia-gtk-theme`, `kvantum-theme-materia`, and `breeze-icons`