#!/bin/sh
# -0 
# -0 
# -0 
alias g='git'
alias g-open='g-open'
alias g-clone='g clone'

# -0 
# -0 branch details
# -0 
alias g-branch-a='g branch -a'               # list all branch
alias g-branch-list-remote='g remote -v'     # list all remote URLs
alias g-branch-list-upstream='g branch -vv ' # verbose list set-upstrzeam
alias NEW_LINE='echo -----'                  ##
alias gbb='ECHO \
&& g-branch-a && NEW_LINE  \
&& g-branch-list-remote && NEW_LINE \
&& g-branch-list-upstream ; ECHO'
# -- remote
alias g-remote-v='g remote -v'
alias g-remote-add-origin='g remote add origin'
# git remote add origin https://github.com/nzaero/cosmos-2023.git
# create remote branch
# alias g-push--set-upstream='g push --set-upstream origin master'

# -0 
# -0 USE
# -0 
# -- add
alias ga='g add '
alias gaa='g add --all .'
# -- commit
alias ggm='gaa && g commit -m '
alias gm='g commit -m '
alias gmm='g commit -m "⬛ --"'
# -- push
alias gp='g push'
alias gpp='gaa && gmm && gp '
# -- stash
# alias gtt='g stash'
# alias gtp='g stash pop'
# alias gtl='g stash list '
alias g-stash='g stash'
alias g-stash-pop='g stash pop'
alias g-stash-list='g stash list '
alias g-stash-list--date='g stash list --date=local'
# -- show
alias g-show-axel='g show $(g stash list | cut -d":" -f 1)'
# tag
alias g-tag='g tag | h -ni 2.2.3 2.2.4 2.2.5'
# STATUS
# hash
BOUCHON__GIT_HASH="'ad2e172|e869510' 21068 22606 '615d7ff|ec4667e|ad2e172'"
# files
BOUCHON__GIT_FILES="'jojo.xml' "
# status
BOUCHON__GIT_STATUS=" 'Current branch development is up to date.' \
'modified:|nothing to commit, working tree clean|Untracked files:|new file:|Your branch is ahead of |\(use \"git add <file>...\" to include in what will be committed\)|nothing added to commit but untracked files present (use \"git add\" to track)' \
'redcolor' \
'\(use \"git reset HEAD <file>...\" to unstage\)' \
'orangecolor' \
'purplecolor' \
'deleted:|Changes to be committed:' \
'\(all conflicts fixed: run \"git rebase --continue\"\)|Changes not staged for commit:|Your branch is up-to-date with|\(use \"git checkout -- <file>...\" to discard changes in working directory\)|\(use \"git add <file>...\" to update what will be committed\)' \
'Unmerged paths|stories.ts|.svelte|--no|README.md|packages.json|.npmrc|origin|You are currently rebasing branch|\(use \"git add <file>...\" to mark resolution\)' \
'node_modules' \
'added:|main|main' \
'\(use \"git push\" to publish your local commits\)|\(use \"git add/rm <file>...\" to update what will be committed\)|\(use \"git restore <file>...\" to discard changes in working directory\)|\(use \"git add\" to track\)|\(use \"git add <file>...\" to include in what will be committed\)|Changes to be committed:\(use \"git add <file>...\" to include in what will be committed\)|\(fix conflicts and then run \"git rebase --continue\"\)|\(use \"git rebase --skip\" to skip this patch\)|\(use \"git rebase --abort\" to check out the original branch\)|\(use \"git restore --staged <file>...\" to unstage\)|\(use \"git add/rm <file>...\" as appropriate to mark resolution\)|nothing to commit, working directory clean' \
'\(use \"git add\" and/or \"git commit -a\"\)|Your branch is up to date with|no changes added to commit|nothing added to commit but untracked files present|On branch|interactive rebase in progress|nothing added to commit but untracked files present \(use \"git add\" to track\) '\
"
alias a="ECHO && g status \
| h $BOUCHON__GIT_FILES \
| h $BOUCHON__GIT_STATUS ; \
ECHO"
# -0
# -0
# -0
# alias gb='g branch' # used by fuzzy
alias gc='g checkout'
alias gcb='g checkout -b'
alias g-checkout='g checkout'
alias g-checkout-and-createBranch='g checkout -b'

# -- branch deletions
# git delete branch
# git branch -d

# delete branch locally
# g branch -d localBranchName

# delete branch remotely
# g push origin --delete remoteBranchName

# -- delete remote branch
# git push origin --delete feature/login  # delete remote
alias g-push-origin--delete='g push origin --delete'

# -- modify a branch name
# git branch -m wa-3
# git push origin -u <new_name>
# git push origin --delete <old_name>

# 1 RESET vs REVERT
# TIP: git revert = Public branch (cree un commit qui efface l autre)
# TIP: git reset = private branch (supprime vraiment de l historique)

# -- revert (cree un commit qui efface l autre)
alias grv='g revert '

# -- reset (supprime vraiment de l historique)
# - HARD: delete le commit de l arbre (et aussi du working tree)
# git reset --hard  b04a07f

# - SOFT: tu reccuperes le dernier commit et le place ou il le faut
# git reset --soft HEAD^

# - MIXED: c'est utile pour UNSTAGE (remet en normal ET NON PAS en pret a commiter)
alias grH='g reset HEAD | h -n "M	    "'

# git reset –hard vs git checkout -f
# Last updated on February 8, 2022 by Sal Ferrarello
# I recently had a conversation about git reset --hard vs git checkout -f, and it turns out they do the same thing. This is one of the tricky things about Git, there are often multiple ways to do the same thing.
# Note: git checkout -f is the same as git checkout . except -f works even when there is a currently a merge conflict (git checkout . throws an error in this situation)

# 1 REBASE vs MERGE
# -- rebase
alias grc='g rebase --continue'

# -- pull rebase -- (use this, when you want to update your branch)
alias gitp='g pull --rebase '

# 1 merge
# git merge --abort # when merging, you can abort

# 1 OTHER REPAIR CMD
# -- cherry pick
alias gcp='g cherry-pick' #git cherry -v master
# REGLE: LORSQUE TU CHERRY PICK: IL FAUT ABSOLUEMENT QUE TU METTES:
# PICK (avec la coloration syntaxique : sinon tu ne comprend plus rien)
# git log --graph --left-right --cherry-pick --oneline wa-4...wa-4-bis
# BASICS

# GIT LOG - git log --oneline (stack view) - https://g-scm.com/docs/pretty-formats#Documentation/pretty-formats.txt-Cred

# -2 
# -2 TOUTES LES BRANCHES
# -2 
# You can set the color to any of the following values: normal, black, red, green, yellow, blue, magenta, cyan, or white. If you want an attribute like bold in the previous example, you can choose from bold, dim, ul (underline), blink, and reverse (swap foreground and background).
# alias lg="ECHO && g log -25 --graph --abbrev-commit --decorate --format=format:'%C(yellow)%h%C(reset)%C(auto) 🎤 %d%C(reset)%C(normal)%s%C(reset)%C(dim white) 🙊 %an%C(reset)%C(dim blue)(%ar)%C(reset)' --all; ECHOO"
alias gl="ECHO CURRENT_BRANCH - ONE && g log -25 --format=format:'%C(yellow)%h 🎤 %C(white)%s 🙊 %C(cyan)(%ar) %C(auto)%d %C(dim white)%an - %C(cyan)(%as)' ; ECHOO"
alias gll="ECHO CURRENT_BRANCH - ALL && g log -25 --format=format:'%C(yellow)%h 🎤 %C(white)%s 🙊 %C(cyan)(%ar) %C(auto)%d %C(dim white)%an - %C(cyan)(%as)' --all; ECHOO"

alias lg="ECHO TREE - ONE && g log -13 --graph --abbrev-commit --decorate --format=format:'%C(yellow)%h - %C(cyan)(%as) (%ar) %C(auto)%d%n''          🎤 %C(white)%s 🙊 %C(dim white)%an';  ECHOO"
alias lgg="ECHO TREE - ALL && g log -13 --graph --show-linear-break --abbrev-commit --decorate --format=format:'%C(yellow)%h - %C(cyan)(%as) (%ar) %C(auto)%d%n''          🎤 %C(white)%s 🙊 %C(dim white)%an' --all;  ECHOO"

# https://git-scm.com/docs/git-log
# https://git-scm.com/docs/pretty-formats
# https://git-scm.com/docs/git-config#Documentation/git-config.txt-color
# normal
# black
# red
# green
# yellow
# blue
# magenta
# cyan
# white

# bold
# dim
# ul
# blink
# reverse
# italic
# strike
# bright  # (Git 2.26, Q1 2020, example: brightred)

# The value for a variable that takes a color is a list of colors (at most two, one for foreground and one for background) and attributes (as many as you want), separated by spaces.
# The basic colors accepted are normal, black, red, green, yellow, blue, magenta, cyan, white and default. The first color given is the foreground; the second is the background. All the basic colors except normal and default have a bright variant that can be specified by prefixing the color with bright, like brightred.
# The color normal makes no change to the color. It is the same as an empty string, but can be used as the foreground color when specifying a background color alone (for example, "normal red").
# The color default explicitly resets the color to the terminal default, for example to specify a cleared background. Although it varies between terminals, this is usually not the same as setting to "white black".
# Colors may also be given as numbers between 0 and 255; these use ANSI 256-color mode (but note that not all terminals may support this). If your terminal supports it, you may also specify 24-bit RGB values as hex, like #ff0ab3.
# The accepted attributes are bold, dim, ul, blink, reverse, italic, and strike (for crossed-out or "strikethrough" letters). The position of any attributes with respect to the colors (before, after, or in between), doesn’t matter. Specific attributes may be turned off by prefixing them with no or no- (e.g., noreverse, no-ul, etc).
# The pseudo-attribute reset resets all colors and attributes before applying the specified coloring. For example, reset green will result in a green foreground and default background without any active attributes.


# // -3 UNE SEULE BRANCHE
alias lggg='g log --graph --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
# alias gll='g lg'
# // -0 UI: GRAPH
alias lgggg="g log -13 --graph --pretty=format:'  %C(yellow)%<(30)%d   %C(white)%<(50)%s  %C(cyan)%h   %C(bold blue)%<(12)%cr  ' --abbrev-commit --date=short --all  \
| h -i  $BOUCHON__GIT_LOG \
| h -ni popo pipi pupu koko kiki kuku  '\[maven-release-plugin\] prepare for next development iteration|\[maven-release-plugin\] prepare release'  \
| h -ni $BOUCHON__GIT_HASH "
alias lggggg="g log -30 --graph --pretty=format:'  %C(yellow)%<(25)%d   %C(white)%<(100)%s  %C(cyan)%h   %C(bold blue)%<(12)%cr  ' --abbrev-commit --date=short --all  "
# Z
alias lgggggg="g log -13 --graph --pretty=format:'  %C(yellow)%<(30)%d   %C(white)%<(50)%s  %C(cyan)%h   %C(bold blue)%<(12)%cr  ' --abbrev-commit --date=short --all "
# alias lggg="g log -13 --graph -–pretty=format:' %Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset ' --abbrev-commit --date=short --all "

# // -0 UI: hash-list
alias ggl="g log -30 \
| h -i  $BOUCHON__GIT_LOG \
| h -ni popo pipi pupu koko kiki kuku  '\[maven-release-plugin\] prepare for next development iterationgi|\[maven-release-plugin\] prepare release'  \
| h -ni $BOUCHON__GIT_HASH "
alias gggl="g log --graph --abbrev-commit --date=relative"

# // -0 DIFF + / -
alias gl-1='g log -50 --stat'
alias gl-2='g log -10 --graph --oneline --decorate --all --name-status --stat' # WARN: je n ai pas le nom des personnes
alias gl-3='g log -20 --stat  --oneline --pretty=format:"%Cred%h%Creset %C\(yellow\)%d%Creset %C\(yellow\)%s %Cgreen\(%cr\) %C\(bold blue\)<%an>%Creset" --abbrev-commit | grep -E "/|$"'
alias gl-4='g log -20 --author="axel" --stat  --oneline --pretty=format:"%Cred%h%Creset %C(yellow)%d%Creset %C(yellow)%s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit | grep -E "/|$"'
alias gl-5='g log --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s <%ad>" --abbrev-commit --date=relative --name-status their = log --all --graph --decorate --oneline --simplify-by-decoration'
alias gl-6='g log -50 --author="axel" --stat'
alias gl-7='g log --author="axel" --stat'

# -2
# -2 END
# -2