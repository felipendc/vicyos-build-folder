#!/bin/bash

# Open a new root folder, and copy the vicyos-build-folder to the root folder!
xfce() {
    cd VicyosLinux-stable-xfce
    ./build-vicyos.sh
    cd ../
}

xfceDark() {
    cd VicyosLinux-stable-xfce-dark-edition
    ./build-vicyos-dark-edition.sh
    cd ../
}

gnome() {
    cd VicyosLinux-stable-gnome-dark-edition
    ./build-vicyos-gnome-dark.sh
    cd ../
}

hlwm() {
    cd VicyosLinux-stable-hybrid-hlwm-dark-edition
    ./build-vicyos-hybrid-hlwm-dark.sh
    cd ../
}

nord() {
    cd Vicyos-Nord-Stable
    ./build-vicyos-nord.sh
    cd ../
}

gnome
hlwm
xfce
xfceDark
nord