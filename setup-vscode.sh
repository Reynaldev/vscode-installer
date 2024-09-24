#!/bin/bash

FILE_NAME="vscode.tar.gz"

DIR_PATH="/usr/share/"
DIR_NAME="VSCode-linux-x64"

FULL_PATH="${DIR_PATH}${DIR_NAME}"

if [ -d $FULL_PATH ]; then
    rm -rf $FULL_PATH
fi

wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-x64" -vO $FILE_NAME
tar -xzf $FILE_NAME

mv ./$DIR_NAME $FULL_PATH
ln -sf $FULL_PATH/bin/code /usr/bin/code
