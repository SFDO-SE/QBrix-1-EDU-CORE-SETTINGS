#!/bin/bash

FILE=.vscode/tasks.json
ENDMESSAGE="New VSCode Tasks File Created!"

if [ -f "$FILE" ]; then
    echo "Replacing tasks.json file with new version"

    #Create Backup
    cp .vscode/tasks.json .vscode/tasks-backup.json
    rm .vscode/tasks.json

    ENDMESSAGE="$ENDMESSAGE You can delete .vscode/tasks-backup.json now."

else 
    echo "$FILE does not exist. Creating new file now."
    ENDMESSAGE="$ENDMESSAGE Make sure to remove .vscode from the .gitignore file in your project."
fi

#Create new file from GitHub Repo 
    curl -s -H 'Authorization: token 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' https://raw.githubusercontent.com/SFDO-SE/NxDO-PACKAGE-REPO-TEMPLATE/main/.vscode/tasks.json | jq '.' --raw-output > .vscode/tasks.json 

echo $ENDMESSAGE

exit 0

