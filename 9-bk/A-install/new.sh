# GIT SSH
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

# brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo

# SHOW HIDCEN FILES
# “Command” + “Shift” + “.”

# START
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/0-minuit-ax/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"

brew install --cask google-chrome
brew install git
brew install --cask visual-studio-code

brew install node
brew install nvm
brew install firebase-cli
brew install typescript
brew install java
brew install pnpm
brew install yarn

# advanced brew
brew install bat
brew install fd
brew install exa 
brew install fzf
brew install ack # mandatory to use 'h'
# prompt
brew install starship
brew install --cask iterm2

npm install -g npm-check-updates

brew install tree

# tab intelligent
brew install fzf
# a faire pour install key
$(brew --prefix)/opt/fzf/install
# color on cmd
brew install zsh-fast-syntax-highlighting
# source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# i do not like it !
# brew install zsh-autocomplete

# gawk is dep of fzf-tab
brew install gawk

npm install -g degit

# nvm in rust
brew install fnm

brew install git-delta

# —————————————————————
# useless
# —————————————————————

# ==> Caveats
# ==> openjdk
# For the system Java wrappers to find this JDK, symlink it with
#   sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# openjdk is keg-only, which means it was not symlinked into /opt/homebrew,
# because macOS provides similar software and installing this software in
# parallel can cause all kinds of trouble.

# If you need to have openjdk first in your PATH, run:
#   echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.zshrc

# For compilers to find openjdk you may need to set:
#   export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# —————————————————————
# https://github.com/tonsky/FiraCode
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# https://hovancik.net/stretchly/downloads/
brew update && brew install --cask stretchly

brew install --cask notion
brew install --cask discord


# https://github.com/tombonez/noTunes
brew install --cask notunes

# github CLI
brew install gh

brew install --cask vlc

# does not work
# brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo
# brew install --cask --no-quarantine syntax-highlight