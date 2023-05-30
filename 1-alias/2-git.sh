#!/bin/sh


alias g='git'

alias g-open='g-open'
alias g-clone='g clone'

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
#
# | h -ni "Enumerating objects:" "Writing objects:" "remote: Resolving deltas:"
#
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

# ----------------------------------------------------------
# hash
export BOUCHON__GIT_HASH="'ad2e172|e869510' 21068 22606 '615d7ff|ec4667e|ad2e172'"

# files
BOUCHON__GIT_FILES="'jojo.xml' "
# status
BOUCHON__GIT_STATUS=" 'Current branch development is up to date.' \
'nothing to commit, working tree clean| untracked files:|Your branch is ahead of |\(use \"git push\" to publish your local commits\)|\(use \"git add <file>...\" to include in what will be committed\)|nothing added to commit but untracked files present (use \"git add\" to track)' \
'redcolor' \
'\(use \"git reset HEAD <file>...\" to unstage\)' \
'orangecolor' \
'purplecolor' \
'redcolorBG' \
'\(all conflicts fixed: run \"git rebase --continue\"\)|modified:|Your branch is up-to-date with|\(use \"git add/rm <file>...\" to update what will be committed\)|\(use \"git restore <file>...\" to discard changes in working directory\)|\(use \"git checkout -- <file>...\" to discard changes in working directory\)|\(use \"git add <file>...\" to update what will be committed\)' \
'Unmerged paths|Untracked files:|Changes to be committed:|Changes not staged for commit:|no changes added to commit|You are currently rebasing branch|\(use \"git add <file>...\" to mark resolution\)' \
'deleted:' \
'added:|main|origin/main' \
'\(use \"git add\" and/or \"git commit -a\"\)|\(use \"git add\" to track\)|\(use \"git add <file>...\" to include in what will be committed\)|Changes to be committed:\(use \"git add <file>...\" to include in what will be committed\)|\(fix conflicts and then run \"git rebase --continue\"\)|\(use \"git rebase --skip\" to skip this patch\)|\(use \"git rebase --abort\" to check out the original branch\)|new file: |\(use \"git restore --staged <file>...\" to unstage\)|\(use \"git add/rm <file>...\" as appropriate to mark resolution\)|nothing to commit, working directory clean' \
'Your branch is up to date with|nothing added to commit but untracked files present|On branch|interactive rebase in progress|nothing added to commit but untracked files present \(use \"git add\" to track\) '\
"

alias a="ECHO && g status \
| h $BOUCHON__GIT_FILES \
| h $BOUCHON__GIT_STATUS ; \
ECHO"
# ----------------------------------------------------------
# delete branch locally
# g branch -d localBranchName

# delete branch remotely
# g push origin --delete remoteBranchName

# alias gb='g branch' # used by fuzzy
alias gc='g checkout'
alias gcb='g checkout -b'
alias g-checkout='g checkout'
alias g-checkout-and-createBranch='g checkout -b'

# branch details
alias g-branch-a='g branch -a'               # list all branch
alias g-branch-list-remote='g remote -v'     # list all remote URLs
alias g-branch-list-upstream='g branch -vv ' # verbose list set-upstrzeam
alias NEW_LINE='echo -----'                  ##
alias gbb='ECHO \
&& g-branch-a && NEW_LINE  \
&& g-branch-list-remote && NEW_LINE \
&& g-branch-list-upstream ; ECHO'

# -- branch deletions
# git delete branch
# git branch -d

# -- delete remote branch
# git push origin --delete feature/login  # delete remote
alias g-push-origin--delete='g push origin --delete'

# -- modify a branch name
# git branch -m wa-3
# git push origin -u <new_name>
# git push origin --delete <old_name>

# -- remote
alias g-remote-v='g remote -v'
alias g-remote-add-origin='g remote add origin'

# create remote branch
alias g-push--set-upstream='g push --set-upstream origin master'

# %%% RESET vs REVERT
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

# -----------------------------------------------------
# %%% REBASE vs MERGE
# -----------------------------------------------------
# -- rebase
alias grc='g rebase --continue'

# -- pull rebase -- (use this, when you want to update your branch)
alias gitp='g pull --rebase '

# -----------------------------------------------------
# -- merge
# -----------------------------------------------------
# git merge --abort # when merging, you can abort

# -----------------------------------------------------
# %%% OTHER REPAIR CMD
# -----------------------------------------------------
# -- cherry pick
alias gcp='g cherry-pick' #git cherry -v master
# REGLE: LORSQUE TU CHERRY PICK: IL FAUT ABSOLUEMENT QUE TU METTES:
# PICK (avec la coloration syntaxique : sinon tu ne comprend plus rien)
# git log --graph --left-right --cherry-pick --oneline wa-4...wa-4-bis
# BASICS

# GIT LOG - git log --oneline (stack view) - https://g-scm.com/docs/pretty-formats#Documentation/pretty-formats.txt-Cred

# UNE SEULE BRANCHE
alias gl='g log --graph --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
alias gll='g lg'

# TOUTES LES BRANCHES
alias lg="ECHO && g log -25 --graph --abbrev-commit --decorate --format=format:'%C(yellow)%h%C(reset)%C(auto)%d%C(reset) %C(normal)%s%C(reset) %C(dim white)%an%C(reset) %C(dim blue)(%ar)%C (reset)' --all; ECHOO"

# UI: GRAPH
alias lg="g log -13 --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias lggg="g log -13 --graph --pretty=format:'  %C(yellow)%<(30)%d   %C(white)%<(50)%s  %C(cyan)%h   %C(bold blue)%<(12)%cr  ' --abbrev-commit --date=short --all  \
| h -i  $BOUCHON__GIT_LOG \
| h -ni popo pipi pupu koko kiki kuku  '\[maven-release-plugin\] prepare for next development iteration|\[maven-release-plugin\] prepare release'  \
| h -ni $BOUCHON__GIT_HASH "
alias lgggg="g log -30 --graph --pretty=format:'  %C(yellow)%<(25)%d   %C(white)%<(100)%s  %C(cyan)%h   %C(bold blue)%<(12)%cr  ' --abbrev-commit --date=short --all  "

# UI: hash-list
alias ggl="g log -30 \
| h -i  $BOUCHON__GIT_LOG \
| h -ni popo pipi pupu koko kiki kuku  '\[maven-release-plugin\] prepare for next development iterationgi|\[maven-release-plugin\] prepare release'  \
| h -ni $BOUCHON__GIT_HASH "
alias gggl="g log --graph --abbrev-commit --date=relative"

# DIFF + / -
alias gl-1='g log -50 --stat'
alias gl-2='g log -10 --graph --oneline --decorate --all --name-status --stat' # WARN: je n ai pas le nom des personnes

# Z
alias lggg="g log -13 --graph --pretty=format:'  %C(yellow)%<(30)%d   %C(white)%<(50)%s  %C(cyan)%h   %C(bold blue)%<(12)%cr  ' --abbrev-commit --date=short --all "
# alias lggg="g log -13 --graph -–pretty=format:' %Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset ' --abbrev-commit --date=short --all "

alias gl-3='g log -20 --stat  --oneline --pretty=format:"%Cred%h%Creset %C\(yellow\)%d%Creset %C\(yellow\)%s %Cgreen\(%cr\) %C\(bold blue\)<%an>%Creset" --abbrev-commit | grep -E "/|$"'
alias gl-4='g log -20 --author="axel" --stat  --oneline --pretty=format:"%Cred%h%Creset %C(yellow)%d%Creset %C(yellow)%s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit | grep -E "/|$"'
alias gl-5='g log --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s <%ad>" --abbrev-commit --date=relative --name-status their = log --all --graph --decorate --oneline --simplify-by-decoration'
alias gl-6='g log -50 --author="axel" --stat'
alias gl-7='g log --author="axel" --stat'
