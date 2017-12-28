" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/vinarise.vim'
Plug 'scrooloose/nerdtree'
Plug 'lervag/vimtex'
Plug 'python-mode/python-mode'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'davidhalter/jedi-vim'
Plug 'a-watson/vim-gdscript'
Plug 'igankevich/mesonic'
Plug 'joonty/vdebug'
Plug 'lumiliet/vim-twig'
Plug 'ivanov/vim-ipython'
Plug 'jpalardy/vim-slime'
call plug#end()

"Better management of Swap files
set directory=$HOME/.vim/swapfiles//

" Don't try to be vi compatible
set nocompatible


" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=8
set shiftwidth=4
set softtabstop=2
set expandtab
set noshiftround
set autoindent
set smartindent
set cindent

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Color scheme (terminal)
syntax enable
set background=dark
let g:seoul256_background=234
colorscheme seoul256

map <C-k> :NERDTreeToggle %<CR>

" Buffers
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>


"Vim Airline
"Tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme='lucius'

:set backupcopy=yes


"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_c_checkers=['gcc']
"let g:syntastic_tex_checkers=['chktex']
""AVR
"let g:ycm_show_diagnostics_ui = 0
"let g:syntastic_cpp_checkers=['cpp']
"let g:syntastic_cpp_clang_check_post_args = ""

fun! ReadMan()
  " Assign current word under cursor to a script variable:
  let s:man_word = expand('<cword>')
  " Open a new window:
  :exe ":wincmd n"
  " Read in the manpage for man_word (col -b is for formatting):
  :exe ":r!man " . s:man_word . " | col -b"
  " Goto first line...
  :exe ":goto"
  " and delete it:
  :exe ":delete"
endfun
" Map the K key to the ReadMan function:
map K :call ReadMan()<CR>

"SLIME
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

"Python-mode
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_folding = 0
let g:pymode_run_bind = '<leader>r'
