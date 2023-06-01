# ZSH-RC -- 15 may 2023 - COSMOS

# -------------------------------------
# ZSH-HISTORY
# -------------------------------------
# https://www.soberkoder.com/better-zsh-history/
# https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/history.zsh
export HISTFILE=~/.zsh_history # HISTSIZE - Refers to the number of commands that are loaded into memory from the history file
export HISTSIZE=100000000      # HISTFILE - Refers to the path/location of the history file
export SAVEHIST=100000000      # SAVEHIST - Refers to the number of commands that are stored in the zsh history file
export HISTTIMEFORMAT="[%F %T] "


# -------------------------------------
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}
# exports - all
export COSMOS_RC=~/"0-dev/master/0-cosmos"
export COSMOS_LIB=~/"0-dev/master/0-cosmos/0-shell/A-lib"
# alias - base
. "$COSMOS_RC/1-alias/1-unix.sh"
. "$COSMOS_RC/1-alias/2-firebase.sh"
. "$COSMOS_RC/1-alias/2-git.sh"
. "$COSMOS_RC/1-alias/2-node.sh"
. "$COSMOS_RC/1-alias/2-turbo.sh"

# -------------------------------------

# autoload -U compinit
# compinit
# setopt  autocd autopushd \ pushdignoredups
# menu navigation start
autoload -Uz compinit
compinit
# zstyle ':completion:*' menu select
# menu navigation end

# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# config here = https://github.com/Aloxaf/fzf-tab/wiki/Configuration
zstyle ':fzf-tab:complete:_zlua:*' query-string input
zstyle ':fzf-tab:complete:kill:argument-rest' fzf-preview 'ps --pid=$word -o cmd --no-headers -w -w'
zstyle ':fzf-tab:complete:kill:argument-rest' fzf-flags '--preview-window=down:3:wrap'
zstyle ':fzf-tab:complete:kill:*' popup-pad 0 3
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
zstyle ':fzf-tab:complete:cd:*' popup-pad 30 0
zstyle ':fzf-tab:complete:cd:*' sort true
# zstyle ":fzf-tab:*" fzf-flags --color=bg+:23
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
zstyle ":completion:*:git-checkout:*" sort false
zstyle ':completion:*:exa' file-sort modification
zstyle ':completion:*:exa' sort false

# https://minsw.github.io/fzf-color-picker/
# export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#000000,bg:#000000,hl:#ff0000 --color=fg+:#fff700,bg+:#000000,hl+:#ff0000 --color=info:#f05de4,prompt:#ff006f,pointer:#ff0000 --color=marker:#000000,spinner:#000000,header:#f05de4'
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#00b524,bg:#000000,hl:#ff0000 --color=fg+:#fff700,bg+:#000000,hl+:#ff0000 --color=info:#f05de4,prompt:#ff006f,pointer:#ff0000 --color=marker:#000000,spinner:#000000,header:#f05de4'

# useless finalement (deps fzf-tab ?)
# export GAWK_BIN="/opt/homebrew/opt/gawk/libexec/gnubin"
# pathadd $GAWK_BIN

# fzf (tab ++)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source "$COSMOS_RC/0-shell/A-lib/fzf-tab/fzf-tab.plugin.zsh"

# lib -- higlighter -- > echo "rvjbovRGYBOV" | h   r v j b o v R G Y B O V
source "$COSMOS_LIB/h/h.sh"


# lib
export JAVA_HOME="/opt/homebrew/opt/openjdk"
export JAVA_BIN="/opt/homebrew/opt/openjdk/bin"
pathadd $JAVA_BIN

export PNPM_HOME="/opt/homebrew/opt/pnpm"
pathadd $PNPM_HOME

# pnpm
# export PNPM_HOME="/Users/0-minuit-ax/Library/pnpm"
# case ":$PATH:" in
#   *":$PNPM_HOME:"*) ;;
#   *) export PATH="$PNPM_HOME:$PATH" ;;
# esac
# pnpm end


# --------------------------------
# --------------------------------
# --------------------------------


# ls color - https://github.com/xPMo/zsh-ls-colors/
# ${prefix}::fmt [ -f $format | -F $format ] [ -o | -0 | -a | -A ] $context $files[@]
# load function as my-lscolors::fmt
# The remaining arguments to source determines which lib/ files you want to load.
# If no arguments are provided, then all lib/*.zsh are loaded.
# source ${0:h}/ls-colors/ls-colors.zsh my-lscolors fmt

# 


# lib - syntax hi (fzf-tab must be before)
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# --- pimp-my-prompt
eval "$(starship init zsh)"

FZF_TAB_GROUP_COLORS=(
    $'\033[94m' $'\033[32m' $'\033[33m' $'\033[35m' $'\033[31m' $'\033[38;5;27m' $'\033[36m' \
    $'\033[38;5;100m' $'\033[38;5;98m' $'\033[91m' $'\033[38;5;80m' $'\033[92m' \
    $'\033[38;5;214m' $'\033[38;5;165m' $'\033[38;5;124m' $'\033[38;5;120m'
)
zstyle ':fzf-tab:*' group-colors $FZF_TAB_GROUP_COLORS

# Usage: palette
palette() {
    local -a colors
    for i in {000..255}; do
        colors+=("%F{$i}$i%f")
    done
    print -cP $colors
}

# Usage: printc COLOR_CODE
printc() {
    local color="%F{$1}"
    echo -E ${(qqqq)${(%)color}}
}

#  BUGS
#-----------------------------------------------------------
# fnm (better nvm - node version manager)
eval "$(fnm env --use-on-cd)"
#-----------------------------------------------------------