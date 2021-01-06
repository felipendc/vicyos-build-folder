
![](https://i.imgur.com/aptfV0w.png)
- **Distro Based on:** :fire:ArchLinux & ArcolinuxB:fire:
- **Pre-installed Kernel:** :fire:Rolling-Release Kernel (Always Up To Date):fire:
- **Desktop Environment:** :fire:XFCE Rolling-Release (Always Up To Date):fire:
- **VicyosLinux Documentation Video Playlist:** [:tv:VicyosLinux Latest Tutorials Official:tv:](https://www.youtube.com/playlist?list=PLEHnzNeoCcNzT-ZpVu7aywVocaxr7XgNS)
- **VicyosLinux: XFCE, HLWM & GNOME:** [:arrow_down:Github link:arrow_down:](https://github.com/felipendc/vicyos-build) 
- **ISO Download Link:** [:arrow_down:Download the latest Iso:arrow_down:](https://sourceforge.net/projects/arcolinux-spinoffs/files/Vicyos/VicyosLinux-XFCE%20%28Light%20and%20Dark%20Editions%29/VicyosLinux-XFCE%20%28Dark%20Edition%29/) 

#

**Personal tips to the NVIDIA users:**

- [x] Use your monitor settings to tweak the screen brightness to avoid precocious eyestrain!
- [x] Disable "Dithering" using NVIDIA X Server Settings to avoid precocious eyestrain!
<br />

**Personal tips for NVIDIA users facing screen tearing:** 

1 - sudo nvidia-settings <br />
2 - Enable "Force Full Composition Pipeline" <br />
3 - Click on "Save to X Configuration File" <br />
4 - Save it at: /etc/X11/xorg.conf <br />
5 - Enjoy it! <br />
 <br />

**Packages Update Tip:** 

To update the apps, pkgs and the kernel, open a terminal and type: upall && skel<br />
![](https://i.imgur.com/OHhlz0f.png)
 <br />


**Required Archiso for Building the ISO:** 

You will need to be running any VicyosLinux Distribution due to the fact that it has the proper Building packages built-in.<br />

#

<br />
<br />
<br />
<br />


**//  vicyoslinux-dark-2021.01.06.iso - Changelogs:**

 - [x] Pre-installed Kernel version 5.10.4-arch2-1
 - [x] Get a pkg info just by typing: info _name-of-the-pkg
 - [x] Compiled ISO release date removed from the terminal 
 - [x] New Vicyos Packages Repository - The old one us bugged
 - [x] Using ArcoLinux Calamares configs adapted for VicyosLinux Calamares!
 - [x] Using ArcoLinux-ISO building script adapted for VicyosLinux-ISO
 - [x] Minor bugs fixed
 - [x] Systemd required startable files added - from ArcoLinux-ISO
 - [x] Building ISO Script Improved: Now, it auto-installs the required Archiso 50.1-1 if needed. 
 - [x] Calamares installer won't open - fixed

<br />
<br />


**//  vicyoslinux-dark-2020.09.05.iso - Changelogs:**

 - [x] Packages updated up to the moment of the build (2020-09-05)
 - [x] Add Gufw 

<br />
<br />


**//  vicyoslinux-dark-2020.09.03.iso - Changelogs:**

 - [x] Packages updated up to the moment of the build (2020-09-03)
 - [x] Arcolinux-iso commits added
 - [x] Update calamares config to work with archiso 47.1-1

<br />
<br />

**//  VicyosLinux-Dark-2020-08-24.iso - Changelogs:**

 - [x] Packages updated up to the moment of the build (2020-08-24)
 - [x] Minor updates


<br />
<br />

**//  VicyosLinux-Dark-v20.8.4.iso - Changelogs:**

 - [x] Packages updated up to the moment of the build (04-08-20)
 - [x] Urxvt terminal foregound font now using "Nebula" color to avoid Eyestrain
 - [x] Urxvt terminal resized to 88x24
 - [x] Urxvt terminal internal border is now set to 05
 - [x] Urxvt terminal external border is now set to 0
 - [x] Conky color is now set to "Gray90" color shade to avoid Eyestrain
 - [x] Polybar: Clock underline color shade changed to avoid Eyestrain
 - [x] Polybar: Weather underline color shade changed to avoid Eyestrain

<br />
<br />

**//  VicyosLinux-Dark-v20.8.3.iso - Changelogs:**

 - [x] Packages updated up to the moment of the build (03-08-20)
 - [x] Davinci resolve preset for winff - pre-installed (thanks to Diolinux's winff-resolve-preset)
 - [x] Davinci resolve won't open fixed
 - [x] 7 new wallpapers added
 - [ ] Shell_Full.efi dropped
 - [ ] shellx64.efi dropped

<br />
<br />

**//  VicyosLinux-Dark-v20.8.1.iso - Changelogs:**

 - [x] Packages updated up to the moment of the build (31-07-20)
 - [x] Iso ready for new archiso. Thanks to Erik Dubois's arcolinux-iso-next commits!
 - [x] Build mkinitcpio files not found error, fixed!
 - [x] iwd added: iwd (iNet wireless daemon) a wireless daemon for Linux written by Intel.
 - [x] nvme-cli added: (NVMe tools)
 - [x] efibootmgr added: (a tool for managing UEFI boot entries)

<br />
<br />

**//  VicyosLinux-Dark-v20.7.13.iso - Changelogs:**

 - [x] Packages updated up to the moment of the build (13-07-20)
 - [x] OS distro ID fix!
 - [x] Flatpak - pre-installed
 - [x] Clipgrab added
 - [x] Github-desktop added
 - [ ] Deepin-terminal dropped
 - [ ] Deepin-movie dropped
 - [x] 5 new wallpapers added from elementaryos-fr.org 
 - [x] Added some commits from arcolinux-iso to vicyos-gnome-iso

<br />
<br />

**//  VicyosLinux-Dark-v20.6.2.iso - Changelogs:**

 - [x] ISO build error: "qt5-styleplugins not found", fixed!
 - [x] wget - pre-installed
 - [x] python - pre-installed
 - [x] python-pip - pre-installed
 - [x] curl - pre-installed

<br />
<br />
 
**//  VicyosLinux-Dark-v20.5.22.1.iso - Changelogs:**

 - [x] 4kvideodownloader update error fix 
 - [x] Packages updated up to the moment of the build 
 
<br />
<br />


**//  VicyosLinux-Dark-v20.5.22.iso - Changelogs:**
<br />
 - [x] Support For Snap Apps Out Of The Box e.g (sudo snap install name-of-the-app)
 - [x] Wine Installed By Default e.g (wine name-of-the-app.exe)
 - [x] Hefftor Polybar Spinoff Colors And Icons Modules Restyled for VicyosLinux (To Suit My Needs)
 - [x] Polybar Module: IconTray (It Displays All The Background Apps )
 - [x] Polybar Module: cpu-graph (It Shows All The CPU's Cores GHz Speed)
 - [x] Polybar Module: xwindow (It Displays The Titles Of All Open Windows)
 - [x] Polybar Module: ewmh (It Shows All The  Existing Workspaces)
 - [x] Polybar Module: weather (You Need To Create Your API Code & Add Your City)
 - [x] Polybar Module: updates ( It Keeps Looking For New Update)
 - [x] Polybar Module: rofi (It lists All Your Installed Programs)
 - [x] Polybar Module: pavucontrol (A Quick Access To Pavucontrol Settings)
 - [x] Polybar Module: volume (It Turns The Vol Up & Down By Scrolling Over It, Or Mute By Clicking On It)
 - [x] Polybar Module: temperature1 (A CPU Thermal Sensor)
 - [x] Polybar Module: memory1 (It Measures The Memory Usage In Percentage)
 - [x] Polybar Module: date1 (It displays "%a %d %b" or "d-%m-%Y" By Clicking On It)
 - [x] Polybar Module: clock (A very Useful Digital Clock)
 - [x] Polybar Module: powermenu (It Gives The Option To: Lock, Reboot, Sleep or Shutdown)
 - [x] Vicyos-conky Enabled By Default
 - [ ] Variety Disabled For Now 
 - [ ] Deepin-Movie Polybar Disabled For Now (Glitchy Background)
 - [x] Keybidings Pre-Defined From ArcoLinuxB-XFCE. Thanks to Erik Dubois
 - [x] Keybidings: You Can Use "Keyboard Application" To Change The Shortcuts
 - [x] Weather Polybar Module Is Set In "~/.config/polybar/scripts/weather.py"
 - [x] Betterlockscreen + Vicyos Configs
 - [x] Plank with Chameleon theme
 - [x] Plank with My Daily Apps
 - [x] Plank Daily Apps, Rearranged
 - [ ] Deepin-Movie Icon Removed From Plank For Now 
 - [x] Urxvt-Terminal as default
 - [x] Neofetch: VicyosLinux ASCII 
 - [x] Neofetch: Vicyos Modified Configs
 - [x] Vicyos Background for GRUB
 - [x] GRUB: Boot Default Entry Set to 5 Secunds (You Can Change it Using Grub Customizer App)
 - [x] .bashrc from ArcolinuxB  Modified With Some More Personal "Alias" to Suit My Needs!
 - [x] ZSH with "xiong-chiamiov" Theme Pre-installed 
 - [x] Mc-OS-CTLina-XFCE-Dark [GTK2/3] pre-installed
 - [x] Tela Black Dark Icons from (zayronxio's github) pre-installed
 - [x] Clementine Vicyos personal Configs pre-installed
 - [x] Code (Highlighting) Extension pre-installed
 - [x] Sublime Text 3 Editor (Highlighting) Extension pre-installed
 - [x] ArcoLinuxB Calamares Netinstall Apps Adapted to VicyosLinux
 - [x] El Capitan Cursor Theme As Default
 - [x] Bitata_Amber Cursor Theme 
 - [x] Bitata_Oil Cursor Theme
 - [x] Bitata_Ice Cursor Theme
 - [x] Adwaita Cursor Theme
 - [x] Oxygen Neon Cursor Theme
 - [x] zsh-completions - Working Out Of The Box!
 - [x] zsh-syntax-highlighting - Working Out Of The Box!
 - [x] lightdm-gtk-greeter Theme & Black Background Fixed!
 - [x] URXVT Terminal Now Using: "Ubuntu Mono" Font (To Avoid "Precocious Eyestrain")
 - [x] URXVT Terminal Now Using Font Size: 12.3 (To Avoid "Precocious Eyestrain")
 - [x] Custom DPI Settings Now Set To: 96 (To Avoid "Precocious Eyestrain")
 - [x] And Much More!!!

<br />
<br />

***Third Party Apps Pre-Installed To Suit My Needs Added by My Choice***: <br />

 - [x] 4k video Download 
 - [x] Balena Etcher 
 - [x] Clementine 
 - [x] Code
 - [x] Sublime Text 3 Editor
 - [x] Deepin Movie
 - [x] Deepin Terminal for Winff
 - [x] Discord
 - [x] Dropbox
 - [x] Filezilla
 - [x] FireFox 
 - [x] Google Chrome (Thanks to Erik "Arcolinux_repo")
 - [x] Geany
 - [x] Gimp
 - [x] InkSkape
 - [x] Krita
 - [x] Meld
 - [x] NitroShare
 - [x] ONLYOFFICE (LOOK LIKE MICROSOFT-OFFICE) (Thanks to Erik "Arcolinux_repo")
 - [x] Pinta
 - [x] Qbittorrent
 - [x] Sigil
 - [x] Simple Screen Recorder
 - [x] Stacer
 - [x] ImageWriter (Suse Studio Image Writer)
 - [x] XDM (Xtreme Download Manager)
 - [x] WoeUSB
 - [x] Winff
 - [x] Whatsapp
 - [x] VLC


**And Much More!!!**

<br />
<br />
<br />

# 

**Special Credits:**

VicyosLinux XFCE, HLWM, and GNOME were only possible thanks to: <br />

ArcoLinux Project and whole TEAM! <br />
Erik Dubois for the support and mentoring on Youtube! <br />
Erik Dubois videos & Brad Heffernan for his Hefftor-Editions that got me inspired to work on my VicyosLinux! <br />
ArchLinux: Wiki, AUR, Developers, Trusted Users, Support Staff, Maintainers and all! <br />
Package maintainers for keeping up the pkgs up-to-date! <br />
Linus Torvalds and his team. :sunglasses::sunglasses::sunglasses: Hahaha <br />

# 

**Important Note:**

1 - "VicyosLinux XFCE, HLWM, and GNOME were/are designed to suit my daily needs". :fire::sunglasses: <br />
2 - If you see or stumble upon something different, that's why. :yum: <br />
3 - But I also decided to share this personal project with you all. :blush::earth_americas: <br />
4 - Feel free to edit it, remove or even add anything you want, if you decide to build the ISO from the source. :gear: <br />
5 - Before you drop a bad or even a nonsense comment, re-read the numbers: 1, 2, 3, and 4. :clipboard: <br />
6 - Be a polite person, please! :bowtie: <br />

#

<br />
<br />
<br />

**VicyosLinux-Dark-Edition Screenshots!!!**

![](https://i.imgur.com/SDNcS4N.png)
![](https://i.imgur.com/0IFDiBO.png)
![](https://i.imgur.com/N1MiqCW.png)
![](https://i.imgur.com/DpTzpED.png)
![](https://i.imgur.com/wqwA76A.png)
![](https://i.imgur.com/fz2xqdy.png)
![](https://i.imgur.com/hkGiGmD.png)
![](https://i.imgur.com/mUa5ASm.png)
![](https://i.imgur.com/vfcDRgW.png)
![](https://i.imgur.com/eudn5yX.png)
![](https://i.imgur.com/z62uqJn.png)
![](https://i.imgur.com/o4rdluG.png)
![](https://i.imgur.com/7KIWBma.png)
![](https://i.imgur.com/At21QsF.png)
![](https://i.imgur.com/Q6xwUNd.png)
![](https://i.imgur.com/PJmQNJI.png)
![](https://i.imgur.com/9elgjsm.png)
![](https://i.imgur.com/LhhwJRz.png)
![](https://i.imgur.com/HkdwI5r.png)
![](https://i.imgur.com/He4gWP9.png)
![](https://i.imgur.com/LhaaUTa.png)
![](https://i.imgur.com/qQEI9ks.png)
![](https://i.imgur.com/KZb92Qc.png)
![](https://i.imgur.com/JDAMibO.png)
![](https://i.imgur.com/csxjjtJ.png)
![](https://i.imgur.com/aYpOxAJ.png)
![](https://i.imgur.com/aORQqFr.png)
![](https://i.imgur.com/fwUdAjO.png)
![](https://i.imgur.com/2P9RSE4.png)
![](https://i.imgur.com/lk16rhJ.png)
![](https://i.imgur.com/RRUO2F1.png)
![](https://i.imgur.com/x1gah66.png)
![](https://i.imgur.com/IQzFVHF.png)
![](https://i.imgur.com/OKjX00g.png)

<br />
<br />

**Apps Screenshots:** <br />

<br />

![](https://i.imgur.com/7FS3JQ0.png)
![](https://i.imgur.com/AlFFEz0.png)
![](https://i.imgur.com/O40ojRM.png)
![](https://i.imgur.com/F1XT3vF.png)
![](https://i.imgur.com/sZHMUcT.png)
![](https://i.imgur.com/IbfSg7y.png)
![](https://i.imgur.com/254CaRz.png)
![](https://i.imgur.com/D2n8fVs.png)
![](https://i.imgur.com/Eypziy5.png)
![](https://i.imgur.com/RzGR1vQ.png)
![](https://i.imgur.com/vYpPU7K.png)
![](https://i.imgur.com/yyc14Da.png)
![](https://i.imgur.com/IGfQgFe.png)
![](https://i.imgur.com/mIyh1ET.png)
![](https://i.imgur.com/CsUY4xb.png)
![](https://i.imgur.com/fUfEHCg.png)
![](https://i.imgur.com/Yhk2tev.png)
![](https://i.imgur.com/QJwCLF4.png)
