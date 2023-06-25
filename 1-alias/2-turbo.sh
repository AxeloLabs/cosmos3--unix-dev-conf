#!/bin/sh
alias tb="turbo build "
alias tbb="tb --output-logs=errors-only | h -ni \
'warning|error|is not defined' \
'/Users/0-minuit-ax/0-dev/master/axelo4/|\.js|\.svelte|\+page.svelte' ' in |   at |<|\">|/>' 'apps/blog--toucherterre|src/|routes/|components/' \
'node_modules|\.pnpm/|Packages in scope|app-blog--toucherterre' \
'axelox-uiblog'"
alias tdf="turbo dev --filter='blog--toucherterre'"
alias tddf="tdf --output-logs=errors-only | h -ni \
'warning|error|is not defined' \
'/Users/0-minuit-ax/0-dev/master/axelo4/|\.js|\.svelte|\+page.svelte' ' from |Failed to load url|Does the file exist?|Failed to resolve import| in |   at |<|\">|/>' 'apps/blog--toucherterre|src/|routes/|components/' \
'node_modules|\.pnpm/|Packages in scope' \
'axelox-uiblog' \
'apps' \
'packages' \
"
alias td="turbo dev"
alias tdd="td --output-logs=errors-only | h -ni \
'warning|error|is not defined' \
'/Users/0-minuit-ax/0-dev/master/axelo4/|\.js|\.svelte|\+page.svelte' ' from |Failed to load url|Does the file exist?|Failed to resolve import| in |   at |<|\">|/>' 'apps/blog--toucherterre|src/|routes/|components/' \
'node_modules|\.pnpm/|Packages in scope' \
'axelox-uiblog|axelox-types-blog--toucherterre' \
'apps|/dist/' \
'packages' \
"
# pnpm add <package> --filter <workspace>
# pnpm uninstall <package> --filter <workspace>
# turbo run dev --filter docs
# pnpm install turbo --global
# pnpm add turbo --global
# -1
# -1
# -1
