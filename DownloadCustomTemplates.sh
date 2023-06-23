#!/bin/bash

magenta=`tput setaf 5`
green=`tput setaf 2`
reset=`tput sgr0`

user_home=$(echo ~${SUDO_USER})
templates_path=${user_home}/Library/Developer/Xcode/Templates

function check_for_templates_path {
    if [[ ! -e $templates_path ]]; then
        echo "${magenta}Creating Templates directory 🗂️: $templates_path ${reset}"
        mkdir $templates_path
        cd $templates_path
    fi
}

function install_templates {
    echo "${green}Installing templates into directory: $templates_path ${reset}"
    cd $templates_path
    source_folder="${templates_path}/xcode-templates"

    if [[ ! -e $source_folder ]]; then
        echo "${magenta}Cloning the directory ${reset}"
        git clone git@github.com:oscarodon19/xcode-templates.git
    else
        cd $source_folder
        echo "${magenta}Updating the directory 🔄 ${reset}"
        git pull
        cd $templates_path
    fi
}

function clean_templates_folder {
    echo "${magenta}Cleaning templates folder 🧹 ${reset}"

    mv xcode-templates xcode-templates-temp
    mkdir xcode-templates
    cp -a xcode-templates-temp/Custom\ Templates xcode-templates-temp/.gitignore xcode-templates-temp/.git xcode-templates
    rm -Rf xcode-templates-temp
}

echo "home it is : $user_home"
check_for_templates_path
install_templates
clean_templates_folder
echo "${green}Instalation is done! 🚀"