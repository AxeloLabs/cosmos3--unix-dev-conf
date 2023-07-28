#!/bin/sh

# &&& (tin non-payant)
# alias chrome--green='/Applications/Google\ Chrome--green.app/Contents/MacOS/Google\ Chrome \
#              '
alias chrome--green='/Applications/Google\ Chrome--green.app/Contents/MacOS/Google\ Chrome \
                     --user-data-dir=~/0gh/0-chromeData/datadir-green'

ln -s "$PWD/build" /Applications/Google\ Chrome--green.app/Contents/MacOS/Google\ Chrome \
    --user-data-dir=/tmp/foo --ignore-certificate-errors \
    --unsafely-treat-insecure-origin-as-secure=https://localhost \
    https://localhost/demos/svelte-wp-display
