MAGENTA=`tput setaf 5`
GREEN=`tput setaf 2`
RESET=`tput sgr0`

USER_HOME=$(echo ~${SUDO_USER})

echo "home it is : $USER_HOME"

XCODE_PATH="${USER_HOME}/Library/Developer/Xcode"
cd $XCODE_PATH

TEMPLATES_PATH=${USER_HOME}/Library/Developer/Xcode/Templates
FILE_TEMPLATES_PATH="${TEMPLATES_PATH}/File Templates"

if [[ ! -e $TEMPLATES_PATH ]]; then
    echo "${MAGENTA}Creating Templates directory $TEMPLATES_PATH ${RESET}"
    mkdir $TEMPLATES_PATH
    cd $TEMPLATES_PATH
fi

echo "${GREEN}Copying the templates into the directory $TEMPLATES_PATH ${RESET}"
cd "$TEMPLATES_PATH"
SOURCE_FILE="${TEMPLATES_PATH}/xcode-templates"

if [[ ! -e $SOURCE_FILE ]]; then
    echo "Cloning the directory "
    git clone git@github.com:oscarodon19/xcode-templates.git
else
    cd "$SOURCE_FILE"
    echo "updating the directory "
    git pull
fi

cd $SOURCE_FILE
if [ -f "DownloadCustomTemplates.sh" ]; then
    rm -fr DownloadCustomTemplates.sh
fi

if [ -f ".gitignore" ]; then
    rm -fr .gitignore
fi

if [ -f "README.md" ]; then
    rm -fr README.md
fi

rm -fr .git