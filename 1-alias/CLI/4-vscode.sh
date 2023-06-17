#!/bin/sh
# VS-CODE extension
# Choose `Shell Command: Install ‘code’ command in PATH
# git config --global core.editor "code --wait"

alias vscode--save-plugin="code --list-extensions > extensions-VS-28nov2022.list"
alias vscode--load-plugin="cat extensions.list |% { code --install-extension $_}"
