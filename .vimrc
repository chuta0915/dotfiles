syntax on
colorscheme desert
set nocompatible
set number
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,iso-2022-jp,euc-jp,cp932,sjis
filetype off

" *********************************
" NeoBundle 系は別ファイルに集約
" *********************************
if filereadable(expand('~/.vimrc.neobundle'))
  source ~/.vimrc.neobundle
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

