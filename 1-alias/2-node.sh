#!/bin/sh
# -0
# -0 Node
# -0
# $$$ node -p "console.log(process.env.PATH.split(':').join('\n'))"
alias nv='node -v' # nv-18='nvm use 18.4.0'
alias upAll='ncu -u'
alias n="pnpm" # "npm run"
alias ni='n install'
alias ppp='cat package.json | h scripts dependencies devDependencies name start build deploy init test'
# -0
# -0 OTHERS
# -0
alias sass='n smui-prepare'
# publish package
alias spack='npm run package && cd package && npm publish --access public'
# -0
# -0 CHECK
# -0
alias check="echo '🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉\n🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉' \
&& n megacheck | h -ni \
'is defined but never used|Cannot find module|is being used as a type here|is of type|is not assignable to parameter of type|is not assignable to type|does not exist on type' \
'/Users/0-minuit-ax/0-dev/master/axelo3/node_modules \
'/Users/0-minuit-ax/0-dev/master/axelo3/src|Error: |.svelte:'\
'routes|components|domain|stores|tecnology|themes'  \
'TPL/blog|creation|realisation|Creation|Realisation|creation-realisation|CreationRealisationApp' \
'/routes/|app/|(app)/' \
'cms/' \
'/shared/' \
'stdoc/|/0-config/|/debugUi/' \
'\.svelte|\.config' \
'\.js' \
"
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
# -0
# -0 LINT
# -0
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
# -0
# -0 BUILD
# -0
alias nrb='n build'

# -0
# -0 FORMAT
# -0
alias format='n format'
alias formatt='clear && n format | h -ni ".test" "\.cjs" "\.json" "\.svelte"  "\.html" "\.css" "\.js" "\.ts" "\.scss"  '

# -0
# -0 DEV
# -0
alias nrdev='n dev'
alias nrs="n start"
# alias nrs="pnpm run dev -- --open"
alias nrss='nrs | h   "\.svelte" "~/0HOME/GARAGE/INTRALINK/src/|/src/routes/|/src/lib/|/src/stores/" "\[0\]" "\[1\]" ".*:.*:.*" "A11y"'

# -0
# -0 DEBUG
# -0
alias nrdeb="n debug"
# -0
# -0 EMU
# -0
alias nre="n emu"
alias emu='n emu'
alias emu--kill='n emu--kill'
# -0
# -0 DEPLOY
# -0
alias nrdep='n deploy'
# -0
# -0 TEST
# -0
# vitest
alias nrt="n test"
alias nrtt='n test | h -ni "test.ts:" "\-\-" ">>>" "tests/scrapper/" "apiChat" "apiMine" "apiShared" " # "'
# playwright
alias nrp="n play"
alias nrpd="n play-debug"
# -0
# -0 YARN
# -0
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
# -0
# -0
# -0
