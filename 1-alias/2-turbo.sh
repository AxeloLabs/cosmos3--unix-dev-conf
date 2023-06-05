#!/bin/sh

alias tb="turbo build "
alias tbb="turbo build --output-logs=errors-only | h -ni \
'warning' error 'Rollup failed to resolve import|is not defined' \
'/Users/0-minuit-ax/0-dev/master/axelo3/node_modules/.pnpm/|\.js|\.svelte|\+page.svelte' '   at |<|\">|/>' 'src/|routes/|components/|tinax/' \
'\.pnpm/|/Users/0-minuit-ax/0-dev/master/axelo3/tinax4/apps/|Packages in scope'\
'wa-ui|wa-scrap|wa-tinax|wa-types|wa-utils|wa-firebase|tinax-view|tinax-scrap|demo-docs|demo-web'
"
alias td="turbo dev "

# pnpm add <package> --filter <workspace>
# pnpm uninstall <package> --filter <workspace>
# turbo run dev --filter docs

# pnpm install turbo --global
# pnpm add turbo --global