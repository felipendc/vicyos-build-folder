#!/bin/bash
#set -e
archiso_installed_version=$(pacman -Qn archiso)
archiso_required_version="archiso 50.1-1"

buildFolder="$HOME/Vicyos-build"
outFolder="$HOME/Vicyos-Iso-Complete/"
finishedIso="$buildFolder/archiso/out/"
mkdir $outFolder


echo
echo "################################################################## "
tput setaf 2;echo "Phase 1 : clean up and download the latest vicyos-iso from github";tput sgr0
echo "################################################################## "
echo
echo "Deleting the work folder if one exists"
[ -d work ] && rm -rf work
echo "Deleting the build folder if one exists - takes some time"
[ -d $buildFolder ] && sudo rm -rf $buildFolder
echo "Git cloning files and folder to work folder"
git clone https://github.com/felipendc/vicyoslinux-unified-iso.git work
# git clone https://github.com/felipendc/vicyoslinux-unified-DEV-iso work

echo
echo "################################################################## "
tput setaf 2;echo "Phase 2 : Getting the latest versions for some important files";tput sgr0
echo "################################################################## "
echo
echo "Removing the old packages.x86_64 file from work folder"
rm work/archiso/packages.x86_64
echo "Copying the new packages.x86_64 file"
cp -f archiso/packages.x86_64 work/archiso/packages.x86_64
echo


echo
echo "################################################################## "
tput setaf 2;echo "Preparing to Install ARCHISO 50.1-1";tput sgr0
echo "################################################################## "
echo

if [ "$archiso_installed_version" == "$archiso_required_version" ]; then
	echo "ARCHISO 50.1-1 is already installed."
else
	sudo pacman -U work/archiso/vicyoslinux_required_archiso/archiso-50.1-1-any.pkg.tar.zst --noconfirm
	echo "ARCHISO 50.1-1 was installed successfully."
fi


##############################################################################
##########  Adapting the Output to be compatible with Vicyos-Nord:  ##########
##############################################################################

# Set the Iso Label, Name, Publisher, Aplication, and ISO version!
sed -i "s/iso_name=/iso_name=vicyos-nord/g" work/archiso/profiledef.sh
sed -i "s/iso_label=/iso_label="vicyos-nord-$(date +%Y.%m.%d)"/g" work/archiso/profiledef.sh
sed -i "s/iso_publisher="'""'"/iso_publisher="'"vicyos-Nord <https:\/\/github.com\/felipendc>"'"/g" work/archiso/profiledef.sh
sed -i "s/iso_application="'""'"/iso_application="'"vicyos-nord Live\/Rescue CD"'"/g" work/archiso/profiledef.sh
sed -i "s/iso_version=/iso_version="$(date +%Y.%m.%d)"/g" work/archiso/profiledef.sh

# Add the build date to the "DISTRIB_RELEASE"
release=$(date +%Y.%m.%d)
sed -i "s/DISTRIB_ID=VicyosLinux/DISTRIB_ID=Vicyos-Nord-Edition/g" work/archiso/airootfs/etc/vicyos-release
sed -i "s/DISTRIB_RELEASE=/DISTRIB_RELEASE=$release/g" work/archiso/airootfs/etc/vicyos-release
sed -i "s/VERSION_ID=/VERSION_ID=$release/g" work/archiso/airootfs/etc/os-release

# Print the Build dev-rel :
sed -i "s/ISO_CODENAME=VicyosLinux/ISO_CODENAME=Vicyos-Nord-Edition/g" work/archiso/airootfs/etc/dev-rel
sed -i "s/ISO_RELEASE=/ISO_RELEASE=$release/g" work/archiso/airootfs/etc/dev-rel

# Change the Grub Distributor
sed -i "s/GRUB_DISTRIBUTOR="'"VicyosLinux"'"/GRUB_DISTRIBUTOR="'"Vicyos-Nord-Edition"'"/g" work/archiso/airootfs/etc/default/grub

# Use the Vicyos-Nord .bashrc and .zshrc to the iso:
rm -R work/archiso/airootfs/etc/skel/.zshrc
cp -p archiso/.zshrc work/archiso/airootfs/etc/skel/

rm -R work/archiso/airootfs/etc/skel/.bashrc
cp -p archiso/.bashrc work/archiso/airootfs/etc/skel/

# Move Vicyos documentation files to skel/documents/ folder
mkdir work/archiso/airootfs/etc/skel/Documents
cp -p archiso/.key-bidings-documentation work/archiso/airootfs/etc/skel/Documents/key-bidings-documentation.txt
cp -p archiso/.VicyosLinux-Documentation work/archiso/airootfs/etc/skel/Documents/VicyosLinux-Documentation.txt
cp -p archiso/.How-to-enable-System-Tray-on-the-Polybar work/archiso/airootfs/etc/skel/Documents/How-to-enable-System-Tray-on-the-Polybar.txt
cp -p archiso/.vicyos-tips work/archiso/airootfs/etc/skel/Documents/vicyos-tips.txt

###################################################################################
##################################################################################

echo
echo "################################################################## "
tput setaf 2;echo "Phase 3 : Moving files to build folder";tput sgr0
echo "################################################################## "
echo

echo "Copying files and folder to build folder as root"
sudo mkdir $buildFolder
sudo cp -r work/* $buildFolder

sudo chmod 750 ~/Vicyos-build/archiso/airootfs/etc/sudoers.d
sudo chmod 750 ~/Vicyos-build/archiso/airootfs/etc/polkit-1/rules.d
sudo chgrp polkitd ~/Vicyos-build/archiso/airootfs/etc/polkit-1/rules.d

echo "Deleting the work folder if one exists - clean up"
[ -d work ] && rm -rf work

cd $buildFolder/archiso

echo
echo "################################################################## "
tput setaf 2;echo "Phase 4 : Build ISO";tput sgr0
echo "################################################################## "
echo

cd $buildFolder/archiso/
sudo mkarchiso -v -w $buildFolder -o $finishedIso $buildFolder/archiso/

echo
echo "################################################################## "
tput setaf 2;echo "Phase 5 : Moving the iso to Vicyos-Iso-Complete folder";tput sgr0
echo You just need to access: /home/$USER/Vicyos-Iso-Complete/     
echo "################################################################## "
echo

# Using these lines below will fix the error: "no such file or directory"
cp -r $finishedIso* $outFolder

echo
echo "################################################################## "
tput setaf 2;echo "Phase 6 : Making sure we start with a clean slate next time";tput sgr0
echo "################################################################## "
echo
echo "Deleting the build folder if one exists - takes some time"
[ -d $buildFolder ] && sudo rm -rf $buildFolder
