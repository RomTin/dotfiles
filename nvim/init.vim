" ~/.config/nvim/init.vim

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
set softtabstop=2
set shiftwidth=2

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

" original
set backspace=indent,eol,start
set backspace=2

" shift swap
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

" dein.vim
augroup MyAutoCmd
  autocmd!
augroup END

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir    = expand('~/.config/nvim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

syntax on
