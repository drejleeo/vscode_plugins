#!/bin/bash

# Selected plugins to install
plugins=( 
    # Python
    "ms-python.python"
    "ms-toolsai.jupyter"

    # Git
    "eamodio.gitlens"
    "paragdiwan.gitpatch"
    "arturock.gitstash"

    # Docker
    "ms-azuretools.vscode-docker"
    "ms-vscode-remote.remote-containers"

    # File extensions support
    "shd101wyy.markdown-preview-enhanced"
    "redhat.vscode-yaml"
    "tht13.html-preview-vscode"

    # Notes
    "dionmunk.vscode-notes"

    # Themes
    "tobiasalthoff.atom-material-theme"
    "akamud.vscode-theme-onedark"
    "bluebracket.bluebracket-material"
    "kuscamara.hyper-dark-material"
    "divyanshu013.vscode-material-darker"
    "thomaz.preparing"
    "pkief.material-icon-theme" # Icon theme
)

# Build command arguments for installation
for i in "${plugins[@]}"
do
    options+="--install-extension ${i} "
done

# Install all plugins
code ${options}
