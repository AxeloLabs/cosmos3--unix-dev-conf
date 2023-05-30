#!/bin/sh

# -------------------------------------
# MAC
# -------------------------------------

# -------------------------------------
# GIT
# -------------------------------------
# GIT -- config
git config --global core.excludesfile ~/.gitignore_global


git config --global user.email "regnou.a@gmail.com"
git config --global user.name "regnou"
git config --global core.editor "code --wait"
git config --global merge.tool "vscode"
git config --global mergetool.vscode.cmd "code --wait $MERGED"
git config --global init.defaultBranch main

# -------------------------------------
# CONFIG
# -------------------------------------

# -------------------------------------
# LINK ln  [bootstrap-script]
# -------------------------------------
# zsh
ln -Ff "$COSMOS_RC/0-shell/.zshrc" ~/.zshrc 
# starship
ln -Ff "$COSMOS_RC/0-shell/starship.toml" ~/.config/starship.toml 
   
# vs-code
ln -Ff "$COSMOS_RC/9-bk/B-conf/vs/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json

# export COSMOS_RC=~/"0-dev/master/0-cosmos"

# shortcuts iterm
# https://coderwall.com/p/ds2dha/word-line-deletion-and-navigation-shortcuts-in-iterm2