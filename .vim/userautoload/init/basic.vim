
syntax on
set t_Co=256
colorscheme badwolf

"背景透明"
"highlight Normal ctermbg=NONE guibg=NONE
"highlight NonText ctermbg=NONE guibg=NONE
"highlight SpecialKey ctermbg=NONE guibg=NONE
"highlight EndOfBuffer ctermbg=NONE guibg=NONE

hi Comment ctermfg=14 

"行番号"
highlight LineNr ctermfg=darkyellow    
highlight NonText ctermfg=darkgrey
highlight Folded ctermfg=blue
highlight SpecialKey cterm=underline ctermfg=darkgrey
highlight SpecialKey ctermfg=grey " 特殊記号
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

autocmd BufWrite *.{h,cpp,vim} set fenc=utf-8

set noswapfile

set formatoptions+=ro
set backupdir=~/.vim/backup

set hlsearch
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap <F3> :set hlsearch!<CR>

set incsearch
set ignorecase
set smartcase
set whichwrap+=b,s,<,>,[,],~,h,l,
set backspace=indent,eol,start

set tabstop=4
set shiftwidth=4

set hidden
set wrapscan

set number
set ruler
"set smartindent 
"set autoindent

"set nobackup

set clipboard&
set clipboard^=unnamed
set clipboard^=unnamedplus
"set clipboard^=unnamedplus
"
"set cursorcolumn"
"

set laststatus=2
set wildmode=list:longest
set cursorline
set showcmd

