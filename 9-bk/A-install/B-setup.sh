#!/bin/sh

# -1
# -1 MAC
# -1
# show all files (system, cached..)
defaults write com.apple.Finder AppleShowAllFiles YES
# refresh finder to activate effects
killall Finder

# -1
# -1 GIT
# -1
git config --global core.excludesfile ~/.gitignore_global
git config --global user.email "regnou.a@gmail.com"
git config --global user.name "regnou"
git config --global core.editor "code --wait"
git config --global merge.tool "vscode"
git config --global mergetool.vscode.cmd "code --wait $MERGED"
git config --global init.defaultBranch main

# -1
# -1 LN [bootstrap-script]
# -1
# -1 FIRST: the first file in cosmos MUST be created
# -1 SECOND: it will copy the first file to the second (so it does not copy the existing conf to yours : WARN !!!)
# -1
# zsh
ln -Ff "$COSMOS_RC/0-shell/.zshrc" ~/.zshrc 
# starship
ln -Ff "$COSMOS_RC/0-shell/starship.toml" ~/.config/starship.toml 
# vs-code
ln -Ff "$COSMOS_RC/9-bk/B-conf/vs/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json
ln -Ff "$COSMOS_RC/9-bk/B-conf/vs/settings.json" ~/Library/Application\ Support/Code/User/settings.json

# export COSMOS_RC=~/"0-dev/master/0-cosmos"

# git
ln -Ff ~/0gh/wa1-cosmos/src/2-conf/git/.gitignore_global ~/.gitignore_global
ln -Ff ~/0gh/wa1-cosmos/src/2-conf/git/.gitconfig ~/.gitconfig
ln -Ff ~/0gh/wa1-cosmos/src/2-conf/git/.gitmessage ~/.gitmessage

# -1
# -1
# -1