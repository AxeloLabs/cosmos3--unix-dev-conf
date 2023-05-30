#!/bin/sh

# ###############################################
# 1 Node
# ###############################################
# $$$ node -p "console.log(process.env.PATH.split(':').join('\n'))"

alias nv='node -v'
# alias nv-18='nvm use 18.4.0'
# ----------------------------------------------
alias upAll='ncu -u'
# ----------------------------------------------
# default pckg manager
# alias n="npm run"
alias n="pnpm"
# ----------------------------------------------
alias ni='n install'
# ----------------------------------------------
alias ppp='cat package.json | h scripts dependencies devDependencies name start build deploy init test'

# ###############################################
# OTHERS
# ###############################################
alias sass='n smui-prepare'
# publish package
alias spack='npm run package && cd package && npm publish --access public'

# ###############################################
# 2 CHECK
# ###############################################
alias megaa='n megacheck'

export BOUCHON__CHECK='\
"/tests-unit/scrapper/|has no effect on the type of this expression" \
"\.ts|~/0HOME/0GARAGE/6-APP_TINAX" \
"/scrapper/src/" \
"any|error|Cannot find module" \
"====================================" \
"0 errors|0 warnings|0 hints" \
"svelte-check --tsconfig" \
'

alias checkk='clear \
&& echo "🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳" \
&& echo "🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳" \
&& echo "🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳" \
&& echo "🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳🌳" \
&& n check | h -ni  '"$BOUCHON__CHECK"

alias check="echo '🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉' \
&& n megacheck | h -ni \
'is defined but never used|Cannot find module|is being used as a type here|is of type|is not assignable to parameter of type|is not assignable to type|does not exist on type' \
 /Users/axelo/0gh/vs/toucher-terre/node_modules \
 '/Users/axelo/0gh/vs/toucher-terre/src|Error: |.svelte:'\
'routes|components|domain|stores|tecnology|themes'  \
'TPL/blog|creation|realisation|Creation|Realisation|creation-realisation|CreationRealisationApp' \
'/routes/|app/|(app)/' \
'cms/' \
'/shared/' \
'stdoc/|/DATACONST/|/debugUi/' \
'\.svelte|\.config' \
'\.js' \
 "

# ----------------------------------------------
# 3 LINT
# ----------------------------------------------
BOUCHON__LINT='\
"unexpected any warning" \
"\.ts|~/0HOME/0GARAGE/6-APP_TINAX" \
"Unexpected any|error" \
"warning|singleton" \
"====================================" \
"0 errors|0 warnings|0 hints" \
"checking" \
'

alias lintt="clear && n lint | h -ni $BOUCHON__LINT"

# ----------------------------------------------
# 4 BUILD
# ----------------------------------------------
alias nrb='n build'

# ----------------------------------------------
# 5 FORMAT
# ----------------------------------------------
alias format='n format'
alias formatt='clear && n format | h -ni ".test" "\.cjs" "\.json" "\.svelte"  "\.html" "\.css" "\.js" "\.ts" "\.scss"  '

# ----------------------------------------------
# 6 DEV
# ----------------------------------------------
alias nrdev='n dev'
alias nrs="n start"
# alias nrs="pnpm run dev -- --open"
alias nrss='nrs | h   "\.svelte" "~/0HOME/GARAGE/INTRALINK/src/|/src/routes/|/src/lib/|/src/stores/" "\[0\]" "\[1\]" ".*:.*:.*" "A11y"'

# ----------------------------------------------
# 7 DEBUG
# ----------------------------------------------
alias nrdeb="n debug"

# ----------------------------------------------
# 8 EMU
# ----------------------------------------------
alias nre="n emu"
alias emu='n emu'
alias emu--kill='n emu--kill'

# ----------------------------------------------
# 9 DEPLOY
# ----------------------------------------------
alias nrdep='n deploy'

# ----------------------------------------------
# 10 TEST
# ----------------------------------------------
# vitest
alias nrt="n test"
alias nrtt='n test | h -ni "test.ts:" "\-\-" ">>>" "tests/scrapper/" "apiChat" "apiMine" "apiShared" " # "'
# playwright
alias nrp="n play"
alias nrpd="n play-debug"

# ##############################################
# YARN
# ##############################################
# alias y='yarn'
# alias yb='y build'
# alias y-build='y build'
# alias yd='ECHOO && y dev; ECHO'
# alias y-dev='y dev'
# alias y-emu='y emu'
# alias y-emu--import-prod='y emu--import-prod'
# alias ys='y start'
# alias y-start='y start'
# alias y-deploy='y deploy'
# alias ya='y add'
# alias y-add='y add'
# alias y-global-add='y global add'
# alias y-add-dependency='y add -D'
# alias y-install='yarn install'
# alias y-upgrade-interactive--latest='yarn upgrade-interactive --latest'
# alias y-global-list='yarn global list'

# ##############################################
#
# ##############################################
