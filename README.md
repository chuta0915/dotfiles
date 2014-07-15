dotfiles
========
* cd ~
* git clone https://github.com/chuta0915/dotfiles.git
* sh -x ./dotfiles/dotfilesLink.sh

# Setup
## xcode
* install from AppStore
* install command tool
    xcode-select --install

## git
    git --version

## homebrew
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    brew doctor
    brew bundle
** [homebrew-cask の使い方][http://qiita.com/ryurock/items/1432578d364985f6cb06] 
## zsh
* oh-my-zsh
** modify .zshrc if need. (this dotfile include the setting)
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh 
* .zshrc
    resource ~/.zshrc
## vim
* .vimrc
    :source ~/.vimrc
    :pluginInstall
