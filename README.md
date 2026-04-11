# cachyos-hyprland

A simple script to be run after [installing CachyOS](https://cachyos.org/download) to enable a starter Hyprland environment.

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
* **Wayland Compositor:** [`hyprland`](https://hypr.land/)(duh)
* **Display Manager:** [`greetd`](https://git.sr.ht/~kennylevinsen/greetd) and [`nwg-hello`](https://github.com/nwg-piotr/nwg-hello)
* **Authentication Agent:** [`hyprpolkitagent`](https://github.com/hyprwm/hyprpolkitagent)
* **Notification Daemon:** [`mako`](https://github.com/emersion/mako)
* **File Manager:** [`thunar`](https://docs.xfce.org/xfce/thunar/start)
* **Application Launcher:** [`fuzzel`](https://codeberg.org/dnkl/fuzzel)
* **Status Bar:** [`waybar`](https://github.com/Alexays/Waybar)
* **Clipboard Daemon:** [`cliphist`](https://github.com/sentriz/cliphist)
* **Screenshot Utility:** [`grimblast-git`](https://github.com/hyprwm/contrib/tree/main/grimblast)
* **Session Menu:** [`wlogout`](https://github.com/ArtsyMacaw/wlogout)
* **Lockscreen:** [`hyprlock`](https://github.com/hyprwm/hyprlock)
* **Idle Handler:** [`hypridle`](https://github.com/hyprwm/hypridle)
* **Theme Management:** [`nwg-look`](https://github.com/nwg-piotr/nwg-look)(GTK), [`qt6ct`](https://www.opencode.net/trialuser/qt6ct)(QT), and [`kvantum`](https://github.com/tsujan/Kvantum)(QT)
* **Themes:** [`materia-gtk-theme`, `kvantum-theme-materia`](https://github.com/nana-4/materia-theme), and [`breeze-icons`](https://packages.cachyos.org/package/extra/x86_64/breeze-icons)

### Important Keybindings
* **SUPER/META/WINDOWS = Main Modifier Key**
* $mainMod + RETURN = Open Terminal
* $mainMod + SPACE = Open File Manager
* $mainMod + Q = Kills Active Window
* $mainMod + V = Toggle Floating Mode
* $mainMod + F = Toggle fullscreen mode on active window
* $mainMod + M = Toggle maximize mode on active window
* $mainMod + R = Open Application Launcher
* $mainMod + E = Session Menu
* $mainMod + L = Activate Lockscreen
* PrintScreen = Create screenshot of designated area and add to clipboard
* ALT + Printscreen = Create screenshot of active window and add to clipboard
* CTRL + Printscreen = Create screenshot of active display and add to clipboard