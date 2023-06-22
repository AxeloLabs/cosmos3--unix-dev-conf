#!/bin/sh

# firebase login

alias f='firebase'

# USE
alias f-0-use='f use'
alias f-0-use--add='f use --add'

# PROJECTS
alias f-0-projects--list='f projects:list'
alias f-0-projects--create='f projects:create'
alias f-0-projects--addfirebase='f projects:addfirebase'

# APPS
alias f-1-apps--list='f apps:list'
alias f-1-apps--create='f apps:create'
alias f-1-apps--sdkconfig='f apps:sdkconfig'

# HELP
alias f-help='f -h | h : apps database functions settup projects login hosting  auth emulators'

# DEPLOY
alias f-2-deploy='f deploy'
alias f-2-deploy--only-hosting='f deploy --only hosting'
alias f-2-deploy--only-firestore-rules='f deploy --only firestore:rules'
alias f-2-hosting-channel--deploy='f deploy hosting:crm-dmc-2021'
# alias f-hosting-channel--deploy='firebase hosting:channel:deploy crm-dmc-2021'
# f deploy --only hosting:crm-dmc-2021

# TODO : PROD DELETE :
# POUR TT DB :
# f firestore:delete path-to-delete
# POUR 1 collection :
# f firestore:delete -r /csv

# EMU
alias f-3-emu-start--only-function-firestore='f emulators:start --only functions,firestore | h -ni $PORT'
alias f-3-emu-start--only-firestore='f emulators:start --only firestore'
alias f-3-emu-start--only-function='f emulators:start --only functions'
alias f-3-emu-start--only-hosting='f emulators:start --only hosting'
alias f-3-emu-start--only='f emulators:start --only'
alias f-3-emu-start--inspect-function='f emulators:start --inspect-functions'

# serve
alias f-4-serve='f serve'
alias f-4-serve--only-hosting='f serve --only hosting'
# alias f-emu-exec--only-firestore="f emulators:exec --only firestore 'yarn test-firestore'"
# f emulators:exec --only database "npm run test-database"
