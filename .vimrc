syntax on
colorscheme desert
set nocompatible
set number
set ruler
filetype off

autocmd FileType c,cpp,perl,rb,php,html,erl set cindent
autocmd FileType python set tabstop=2 shiftwidth=2 expandtab
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
set backup
set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932,sjis,utf-8
set backspace=indent,eol,start

set ignorecase
set smartcase
set hlsearch

"***************
"key binding
"***************
nnoremap <Space>. :<C-u>edit $MYVIMRC<Enter>
nnoremap <Space>, :<C-u>source $MYVIMRC<Enter>
noremap j gj
noremap k gk
noremap gj j
noremap gk k
noremap ; :
noremap : ;
nnoremap nt :NERDTreeToggle<CR>
nmap ss <Plug>Ysurround

"***************
"vundle setting
"***************
filetype off
 
" set rtp+=~/.vim/vundle.git/
" call vundle#rc()
" Bundle 'gmarik/vundle'
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
Plugin 'gmarik/vundle'
" vim-scripts リポジトリ (1)
"Plugin "rails.vim"
 
" github の任意のリポジトリ (2)
"Plugin "tpope/vim-fugitive"
 
" github 以外のリポジトリ (3)
"Plugin "git://git.wincent.com/command-t.git"

" Ruby使いにおすすめらしい http://iiidevelop.blogspot.jp/2011/07/vimvundle.html
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/unite.vim'
Plugin 'thinca/vim-ref'
Plugin 'thinca/vim-quickrun'

"Ruby
Plugin 'rails.vim'

"Html
Plugin 'mattn/zencoding-vim'

"Surround 
"Plugin "tpope/vim-surround"

"show tree directory
Plugin 'The-NERD-tree'

call vundle#end()
filetype plugin indent on
syntax enable

