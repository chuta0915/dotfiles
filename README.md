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
* [about Homebrew-cask][http://qiita.com/ryurock/items/1432578d364985f6cb06] 

DB自動起動の設定
```
ln -fs /usr/local/opt/mysql/homebrew.mxcl.mysql.plist ~/Library/LaunchAgents/
ln -fs /usr/local/opt/mongodb/homebrew.mxcl.mongodb.plist ~/Library/LaunchAgents/
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
```

## zsh
### oh-my-zsh
** modify .zshrc if need. (this dotfile include the setting)
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh 
### .zshrc
    resource ~/.zshrc
## vim
### .vimrc
    :source ~/.vimrc
    :pluginInstall
## github
### ssh key
    ssh-keygen -t rsa -C "your_email@example.com"
    pbcopy < ~/.ssh/id_rsa.pub
* open github account > SSH Keys
* add new key, copy id_rsa.pub on the textarea.

### try
    ssh -T git@github.com

## rbenv
    rbenv install --list
    rbenv install 2.0.0-p481 <-- install some version of ruby
    rbenv global 2.0.0-p481
    rbenv versions
    rbenv gemset create 2.0.0-p481 sample
    cd xxx
    echo sample > .rbenv-gemsets
    rbenv gemset active

