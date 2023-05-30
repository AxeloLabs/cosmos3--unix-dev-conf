#!/bin/sh

# firebase login

alias f='firebase'

# USE
alias f-use='f use'
alias f-use--add='f use --add'

# APPS
alias f-apps--list='f apps:list'
alias f-apps--create='f apps:create'
alias f-apps--sdkconfig='f apps:sdkconfig'

# PROJECTS
alias f-projects--list='f projects:list'
alias f-projects--create='f projects:create'
alias f-projects--addfirebase='f projects:addfirebase'

# HELP
alias f-help='f -h | h : apps database functions settup projects login hosting  auth emulators'

# DEPLOY
alias f-deploy='f deploy'
alias f-deploy--only-hosting='f deploy --only hosting'
alias f-deploy--only-firestore-rules='f deploy --only firestore:rules'
alias f-hosting-channel--deploy='f deploy hosting:crm-dmc-2021'
# alias f-hosting-channel--deploy='firebase hosting:channel:deploy crm-dmc-2021'
# f deploy --only hosting:crm-dmc-2021

# TODO : PROD DELETE :
# POUR TT DB :
# f firestore:delete path-to-delete
# POUR 1 collection :
# f firestore:delete -r /csv

# EMU
alias f-emu-start--only-function-firestore='f emulators:start --only functions,firestore | h -ni $PORT'
alias f-emu-start--only-firestore='f emulators:start --only firestore'
alias f-emu-start--only-function='f emulators:start --only functions'
alias f-emu-start--only-hosting='f emulators:start --only hosting'
alias f-emu-start--only='f emulators:start --only'
alias f-emu-start--inspect-function='f emulators:start --inspect-functions'

# serve
alias f-serve='f serve'
alias f-serve--only-hosting='f serve --only hosting'
# alias f-emu-exec--only-firestore="f emulators:exec --only firestore 'yarn test-firestore'"
# f emulators:exec --only database "npm run test-database"
