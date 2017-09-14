syntax on
colorscheme desert
set nocompatible
set number
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,iso-2022-jp,euc-jp,cp932,sjis

"***************
"Plug in
"***************
" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = fnamemodify('~/.vim/dein/', ':p')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" dein.vim本体の存在チェックとインストール
if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' shellescape(s:dein_repo_dir)
endif

" dein.vim本体をランタイムパスに追加
if &runtimepath !~# '/dein.vim'
    execute 'set runtimepath^=' . s:dein_repo_dir
endif

call dein#begin(s:dein_dir)

" Plugins
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('vim-scripts/rails.vim')
call dein#add('tpope/vim-surround')
call dein#add('mattn/emmet-vim')
call dein#add('vim-scripts/The-NERD-tree')


call dein#end()
filetype plugin indent on
syntax enable

" プラグインのインストール
if dein#check_install()
  call dein#install()
endif

"***************
"My setting
"***************
autocmd FileType c,cpp,perl,rb,php,html,erl set cindent
autocmd FileType python set tabstop=2 shiftwidth=2 expandtab
autocmd FileType * set formatoptions-=ro
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
set backup
set backspace=indent,eol,start

set ignorecase
set smartcase
set hlsearch
set ruler

"***************
"key binding
"***************
nnoremap <Space>. :<C-u>edit $MYVIMRC<Enter>
nnoremap <Space>, :<C-u>source $MYVIMRC<Enter>
noremap j gj
noremap k gk
noremap gj j
noremap gk k
nnoremap nt :NERDTreeToggle<CR>
nmap ss <Plug>Ysurround

