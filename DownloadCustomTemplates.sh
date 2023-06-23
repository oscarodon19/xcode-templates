#!/bin/bash

current_path=$(pwd)

# ----------------------------------------
# Colors
# ----------------------------------------

magenta=`tput setaf 5`
green=`tput setaf 2`
reset=`tput sgr0`

# ----------------------------------------
# Destination Path's
# ----------------------------------------
templates_directory="xcode-templates"

source_templates_path=${HOME}/Library/Developer/Xcode/Templates
templates_path="${source_templates_path}/${templates_directory}"

# ----------------------------------------
# Instalation functions
# ----------------------------------------

function check_for_templates_path() {
    echo "${green}Checking templates path"

    if [[ ! -e $source_templates_path ]]; then
        echo "${magenta}Templates directory $source_templates_path doesn't exist. Creating it ${reset}"
        mkdir $source_templates_path
    fi

}

function install_templates() {
    echo "${green}Installing templates into directory: $source_templates_path ${reset}"

    if [[ ! -e $templates_path ]]; then
        cd $source_templates_path
        echo "${magenta}Cloning the directory ${reset}"
        git clone git@github.com:oscarodon19/xcode-templates.git
    else
        cd $templates_path
        echo "${magenta}Updating the directory 🔄 ${reset}"
        git pull
    fi

}

function clean_templates_folder() {
    cd $source_templates_path
    echo "${magenta}Cleaning templates folder 🧹 ${reset}"

    mv xcode-templates xcode-templates-temp
    mkdir xcode-templates
    cp -a xcode-templates-temp/Custom\ Templates xcode-templates-temp/.gitignore xcode-templates-temp/.git xcode-templates
    rm -Rf xcode-templates-temp
}

# ----------------------------------------
# Start instalation
# ----------------------------------------

check_for_templates_path
install_templates
clean_templates_folder

# ----------------------------------------
# Instalation finished
# -----------------------------------------

echo "${green}Instalation is done! 🙌 🎉"
cd $current_path
