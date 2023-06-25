#!/bin/sh
# -0
# -0 CONFIGURATION SETUP
# -0
# show all files (system, cached..)
defaults write com.apple.Finder AppleShowAllFiles YES
# refresh finder to activate effects
killall Finder
# -0
# -0 GIT SETUP
# -0
git config --global core.excludesfile ~/.gitignore_global
git config --global user.email "--@gmail.com"
git config --global user.name "--"
git config --global core.editor "code --wait"
git config --global merge.tool "vscode"
git config --global mergetool.vscode.cmd "code --wait $MERGED"
git config --global init.defaultBranch main
# -0
# -0 LN [bootstrap-script]
# -0
# -0 FIRST: the first file in cosmos MUST be created
# -0 SECOND: it will copy the first file to the second (so it does not copy the existing conf to yours : WARN !!!)
# -0
# -0 ln -s /path/to/target.js (true file) linked-target.js (sym)
# -0
# zsh
ln -Ff "$COSMOS_RC/0-shell/.zshrc" ~/.zshrc
# starship
ln -Ff "$COSMOS_RC/0-shell/starship.toml" ~/.config/starship.toml
# vs-code
ln -Ff "$COSMOS_RC/9-bk/B-conf/vs/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json
ln -Ff "$COSMOS_RC/9-bk/B-conf/vs/settings.json" ~/Library/Application\ Support/Code/User/settings.json
# git
ln -Ff "$COSMOS_RC/9-bk/B-conf/git/.gitignore_global" ~/.gitignore_global
ln -Ff "$COSMOS_RC/9-bk/B-conf/git/.gitconfig" ~/.gitconfig
ln -Ff "$COSMOS_RC/9-bk/B-conf/git/.gitmessage" ~/.gitmessage
# -1
# -1
# -1
