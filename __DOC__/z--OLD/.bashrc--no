#!/bin/bash
# €€€ TAG--COSMOS
# €€€
# €€€ BASH RC -- 16 janv 2023
# €€€
# echo "🌳 > bashrc [start]"
echo "🌳 > [start] $SHELL >> [node $(node -v)] 🌳"

# %%%
# %%% EXPORTs
# %%%
. ~/"COSMOS_RC/shellBoost/alias-exports.sh"

# %%% TERM BOOST
# shellcheck source=~/0gh/0-cosmos/0-alias/0-shellBoost/alias-layout1--header.sh
. "$COSMOS_RC/shellBoost/alias-layout1--header.sh"
. "$COSMOS_RC/shellBoost/alias-layout2--body.sh"

# %%% BASH FEATURES
# FZF -- (it s a brew deps)
[ -f ~/.fzf.bash ] && . ~/.fzf.bash
# load: https://github.com/junegunn/dotfiles

# %%% TERM BOOST
. "$COSMOS_RC/shellBoost/alias-layout3--footer.sh"

# @the end of .rc
# %%%
# %%% BASH EVAL
# %%%
# --- fast move
eval "$(zoxide init bash)"
# --- pimp my prompt
eval "$(starship init bash)"
# --- clear
echo "🌳🌳🌳 [end] $SHELL >> [node $(node -v)] 🌳🌳🌳"
