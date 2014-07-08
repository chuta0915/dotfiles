syntax on
colorscheme desert
set nocompatible
set number
"filetype on
autocmd FileType c,cpp,perl,rb,php,html,erl set cindent
autocmd FileType python set tabstop=2 shiftwidth=2 expandtab
set autoindent
set shiftwidth=2
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
 
set rtp+=~/.vim/vundle.git/
call vundle#rc()
 
" vim-scripts リポジトリ (1)
"Bundle "rails.vim"
 
" github の任意のリポジトリ (2)
"Bundle "tpope/vim-fugitive"
 
" github 以外のリポジトリ (3)
Bundle "git://git.wincent.com/command-t.git"

" Ruby使いにおすすめらしい http://iiidevelop.blogspot.jp/2011/07/vimvundle.html
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-quickrun'

"Ruby
Bundle 'rails.vim'

"Html
Bundle 'mattn/zencoding-vim'

"Surround 
Bundle "tpope/vim-surround"

"show tree directory
Bundle 'The-NERD-tree'

filetype plugin indent on
syntax enable

