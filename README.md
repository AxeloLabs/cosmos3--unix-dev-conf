# VS-CODE extension

# Choose `Shell Command: Install ‘code’ command in PATH

# git config --global core.editor "code --wait"

alias vscode--save-plugin="codi --list-extensions > extensions-cosmos3--4juin2023.list"
alias vscode--load-plugin="cat extensions.list |% { codi --install-extension $\_}"

<!-- https://dandavison.github.io/delta/tips-and-tricks/using-delta-with-vscode.html -->

<!-- https://www.reddit.com/r/commandline/comments/x1pv3z/a_better_git_diff_with_delta/ -->
<!-- git diff | delta => or put delta config and do not do it -->

code --diff file1.js file2.js

https://www.swyx.io/new-mac-setup

git config --global init.defaultBranch main
git config --global user.name "swyxio"
agit config --global user.email shawnthe1@gmail.com
once you have installed diff-so-fancy
set git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX" - makes for much nicer git diff
You can also diff with this bash function dif() { git diff --color --no-index "$1" "$2" | diff-so-fancy; } or with VSCode code --diff file1.js file2.js.
You can also try https://github.com/dandavison/delta

<!--
All git commands that display diff output should now display syntax-highlighted output. For example:

git diff
git show
git log -p
git stash show -p
git reflog -p
git add -p -->

# shortcuts iterm

# https://coderwall.com/p/ds2dha/word-line-deletion-and-navigation-shortcuts-in-iterm2
