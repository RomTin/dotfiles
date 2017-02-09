" system
set number 
set laststatus=2
set statusline=%F%r%h%=%c%p
set incsearch
set history=10000
set autoindent
set list
set wildmenu wildmode=list:full
set listchars=tab:\ \ ,eol:$
set nohlsearch
set cursorline
" tab
set expandtab
set tabstop<
set softtabstop=4
set shiftwidth=4

" key
set backspace=eol,indent
nmap <F5> <Plug>(quickrun)
nnoremap sw <C-w>w
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap sf :<C-u>Unite file<CR>
nnoremap sF :<C-u>Unite file_mru<CR>
nnoremap sn gt
nnoremap sp gT
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>

" syntack
syntax on

" plugin
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))
" FetchList
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/neomru.vim'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

" color
colorscheme peachpuff

" original
set backspace=indent,eol,start
set backspace=2

"inoremap  1 !
"inoremap  2 "
"inoremap  3 #
"inoremap  4 $
"inoremap  5 %
"inoremap  6 &
"inoremap  7 '
"inoremap  8 (
"inoremap  9 )
"inoremap  0 ~
"inoremap  ! 1
"inoremap  " 2
"inoremap  # 3
"inoremap  $ 4
"inoremap  % 5
"inoremap  & 6
"inoremap  ' 7
"inoremap  ( 8
"inoremap  ) 9
"inoremap  ~ 0
