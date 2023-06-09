#!/bin/sh

export BOUCHON__GIT_DDD=' h -ni  \
"^diff --git.*" \
"^\+ .*" \
"^@@.*" \
"toto" \
"\+\=\=\=\=\=\=\=|\+\|\|\|\|\|\|\| merged common ancestors|\+\>\>\>\>\>\>\> Stashed changes" \
"\+\<\<\<\<\<\<\<\ Updated upstream" \
| h -i  \
"^\- .*" \
".*\.java$" \
"deleted file mode" \
"new file mode" \
"index" '

# hash
export BOUCHON__GIT_HASH="'ad2e172|e869510' 21068 22606 '615d7ff|ec4667e|ad2e172'"

# files
export BOUCHON__GIT_FILES="'LoginPresenter.java|Atnv2Dev.gwt.xml' "

# status
export BOUCHON__GIT_STATUS=" 'Current branch development is up to date.' \
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

# AXL_GIT_STATUS_detail=" 'origin/'
# 'development|hotfixes|master' \
# 'YY' \
# 'new file' \
# 'YY' \
# 'YY' \
# 'deleted' \
# 'renamed' \
# "

# log
export BOUCHON__GIT_LOG="'fixes #' \
'refs #' \
'Revert \"Revert' \
'origin/tmp|tmp'  \
'origin/dev|dev'  \
'origin/development|development'  \
'origin/master|master'  \
'HEAD|origin/HEAD' \
'Merge|Revert' \
'origin/hotfixes|hotfixes' \
'tag: |tag: 2\.2\.' \
'refs/stash' \
'test' "
