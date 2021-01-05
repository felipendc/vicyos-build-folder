#!/bin/bash

########################################
## SCRIPT TO VICYOS-BUILD-FOLDER!!! ##
########################################


### SSH is needed to proceed!

rebase() {
#    cd ../
    rm -rf .git
    git init
    git add .
    git commit -m "VicyosLinux BringUp"
    git remote add origin git@github.com:felipendc/vicyos-build-folder.git
    git push -u --force origin master
}

rebase