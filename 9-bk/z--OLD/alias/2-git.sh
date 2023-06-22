#!/bin/sh

# ----------------------------------------------
# FUNCTIONS
# -----------------------------------------------
# diff ce qui est commit (repo distant)
git__voir_fichiers() {
  gsf_ "$1"
  git show "$1" | $BOUCHON__GIT_DDD | h -i "popo" "lolo" "lili" "$1"
  gsf_ "$1"
}

# permet de lister JUSTE NOM + HASH -> et de grep sur un sha
git__voir_fichiers_simple() {
  # FAIRE JUSTE git l
  git show --oneline --decorate --stat "$1"
  git show --oneline --decorate --stat "$1" | h -ni "$1" \\.java \\.ui\\.xml '/services/|/dao/' /dto/ '/client/|/ui/|ui/|/views/|/pdd/|list/pddcreator/' /java/com/groupemre/atnv2 | h -i 'dao|service' presenter 'popup|editor' module 'validator|filter|Validation' bulksend create 'files changed' insertions deletions \\- \\+ '/combo.*'
  #git show  --oneline --decorate --stat --graph $1
  # git show  --oneline --decorate --stat --graph $1 | h -ni $1   \\.java \\.ui\\.xml '/services/|/dao/' /dto/ '/client/|/ui/|ui/|/views/|/pdd/|list/pddcreator/'  /java/com/groupemre/atnv2    | h -i 'dao|service' presenter 'popup|editor' module 'validator|filter|Validation' bulksend  create 'files changed' insertions deletions  \\- \\+ '/combo.*'
  #git show  --oneline --decorate --stat --graph $1 | h -i $1 'java\/com'  \\.java \\.ui\\.xml \\+ \\- 'files changed' insertions deletions
  #'\/java\/com\/groupemre\/atnv2\/'
}

# --
git__sshow() {
  ##git show  --oneline --decorate --stat --graph $1 | h -ni $1  '\/java\/com\/groupemre\/atnv2\/'  'files changed' insertions deletions  \\.java \\.ui\\.xml exception xml | h -i presenter popup module service dao validator filter bulksend editor create  \\+ \\-
  git show --oneline --decorate --stat "$1" | h -ni "$1" '\/java\/com\/groupemre\/atnv2\/' 'files changed' insertions deletions \\.java \\.ui\\.xml exception xml | h -i presenter popup module service dao validator filter bulksend editor create \\+ \\-
}

# ----------------------------------------------
# HELP
# -----------------------------------------------
# delete remote branch
# git push origin -d monorepo

# git remote set-url origin https://github.com/regnou/wa1-cosmos.git

# -----------------------------------------------------
# IMPORT GIT BOUCHONS !
# -----------------------------------------------------
. "$COSMOS_RC/1-cosmos/alias/1-base/2-git--bouchon.sh"

# -----------------------------------------------------
# BASE
# -----------------------------------------------------
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

# -----------------------------------------------------
# MERGE HELP
# -----------------------------------------------------
# -e "added by us:"
alias g-checkout--theirs="g checkout --theirs $(g status | grep -e 'both added' -e 'both modified' -e 'both deleted:' | awk '{print $NF}')"
alias g-commit--theirs='g commit `g status | grep "both added:" | awk "{print $NF}"`'
# Warning: If your .env is already part of your Git repository, adding it to .gitignore will not remove it. In this case, you’ll also need to tell Git to stop tracking .env, which you can do with
# This will delete .env from your repo, but leave it on your local machine (and now your .gitignore will cause it to be ignored).
# git rm --cached .env
# create an orphan virgin branch
# git switch --orphan <new branch>
# git config --global init.defaultBranch

# %%% GIT FUZZY (==> puissant mais CTRL+P ne marche pas)
# BASIC FZF
alias gfa='g fuzzy status'  #---
alias gfgl='g fuzzy log'    #
alias gfcb='g fuzzy branch' #
alias gfgt='g fuzzy stash'
alias gfgr='g fuzzy reflog'
alias gfgpr='g fuzzy pr'
alias gfgd='g fuzzy diff'

# ADVANCED FZF -- FZF guy
alias pwb='g rev-parse --abbrev-ref HEAD'

# fuzzy-branch
alias mb='g branch | fzf --header Merge | xargs g merge'
alias gb='g branch | fzf --header Checkout | xargs g checkout'

# -----------------------------------------------------
# -- status
# -----------------------------------------------------
alias a="ECHO && g status \
| h $BOUCHON__GIT_FILES \
| h $BOUCHON__GIT_STATUS ; \
ECHO"

# -----------------------------------------------------
# %%% branch
# -----------------------------------------------------
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
alias NEW_LINE='echo 🦋 ----- 🦋'              #
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

# --
# https://salferrarello.com/view-current-commit-message-during-g-rebase-conflict/
# Update If you are running Git 2.17 or newer, it turns out you can view the current commit in the ongoing rebase with
# git rebase --show-current-patch
# --
# https://salferrarello.com/resolve-g-rebase-merge-conflicts/
# allows us to verify there are no unresolved merge conflicts. - We can review our changes with
# git diff --staged
# Because we have rewritten history, we need to overwrite the remote branch (rather than just add commits). To do this we add --force-with-lease to our git push.
# git push --force-with-lease

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

# -----------------------------------------------------
# -----------------------------------------------------
# -----------------------------------------------------
# -----------------------------------------------------
# -----------------------------------------------------
# LOG
# -----------------------------------------------------
# -----------------------------------------------------
# -----------------------------------------------------
# -----------------------------------------------------
# -----------------------------------------------------
#%%% GIT LOG - git log --oneline (stack view) - https://g-scm.com/docs/pretty-formats#Documentation/pretty-formats.txt-Cred

# UNE SEULE BRANCHE
alias gl='g log --graph --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
alias gll='g lg'

# TOUTES LES BRANCHES
alias lg="ECHO && g log -25 --graph --abbrev-commit --decorate --format=format:'%C(yellow)%h%C(reset)%C(auto)%d%C(reset) %C(normal)%s%C(reset) %C(dim white)%an%C(reset) %C(dim blue)(%ar)%C (reset)' --all; ECHOO"

# UI: hash-list
alias ggl="g log -30 \
| h -i  $BOUCHON__GIT_LOG \
| h -ni popo pipi pupu koko kiki kuku  '\[maven-release-plugin\] prepare for next development iterationgi|\[maven-release-plugin\] prepare release'  \
| h -ni $BOUCHON__GIT_HASH "
alias gggl="g log --graph --abbrev-commit --date=relative"

# UI: GRAPH
alias lgg="g log -13 --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias lggg="g log -13 --graph --pretty=format:'  %C(yellow)%<(30)%d   %C(white)%<(50)%s  %C(cyan)%h   %C(bold blue)%<(12)%cr  ' --abbrev-commit --date=short --all  \
| h -i  $BOUCHON__GIT_LOG \
| h -ni popo pipi pupu koko kiki kuku  '\[maven-release-plugin\] prepare for next development iteration|\[maven-release-plugin\] prepare release'  \
| h -ni $BOUCHON__GIT_HASH "
alias lgggg="g log -30 --graph --pretty=format:'  %C(yellow)%<(25)%d   %C(white)%<(100)%s  %C(cyan)%h   %C(bold blue)%<(12)%cr  ' --abbrev-commit --date=short --all  "

# DIFF + / -
alias gl-1='g log -50 --stat'
alias gl-2='g log -10 --graph --oneline --decorate --all --name-status --stat' # WARN: je n ai pas le nom des personnes

# Z
alias lggggg="g log -13 --graph --pretty=format:'  %C(yellow)%<(30)%d   %C(white)%<(50)%s  %C(cyan)%h   %C(bold blue)%<(12)%cr  ' --abbrev-commit --date=short --all "
# alias lggg="g log -13 --graph -–pretty=format:' %Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset ' --abbrev-commit --date=short --all "

alias gl-3='g log -20 --stat  --oneline --pretty=format:"%Cred%h%Creset %C\(yellow\)%d%Creset %C\(yellow\)%s %Cgreen\(%cr\) %C\(bold blue\)<%an>%Creset" --abbrev-commit | grep -E "/|$"'
alias gl-4='g log -20 --author="axel" --stat  --oneline --pretty=format:"%Cred%h%Creset %C(yellow)%d%Creset %C(yellow)%s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit | grep -E "/|$"'
alias gl-5='g log --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s <%ad>" --abbrev-commit --date=relative --name-status their = log --all --graph --decorate --oneline --simplify-by-decoration'
alias gl-6='g log -50 --author="axel" --stat'
alias gl-7='g log --author="axel" --stat'

# alias gl12='g l -50'
# alias gl13='g gl -5'
# alias gl14='g lg -50'
# alias gl4='g glaaa -50'

# Graph log with full commit message
# g log --graph --abbrev-commit --decorate --date=relative --all
# g log --graph --oneline --decorate --all
# g log --graph --date-order -C -M --pretty=format:"<%h> %ad [%an] %Cgreen%d%Creset %s" --all --date=short
# lg1=log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
# lg2=log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all

# useful for daily stand-up
git_standup() {
  AUTHOR=${AUTHOR:="$(g config user.name)"}
  since=yesterday
  if [[ $(date +%u) == 1 ]]; then
    since="2 days ago"
  fi
  g log --all --since "$since" --oneline --author="$AUTHOR"
}
