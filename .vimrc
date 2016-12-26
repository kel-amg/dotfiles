set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
" --------------------------------------------------
Plugin 'vim-airline/vim-airline'	" status bar upgrade
Plugin 'scrooloose/nerdtree'    " tree explorer
Plugin 'tpope/vim-fugitive'    " git wrapper
Plugin 'vim-airline/vim-airline-themes'    " status bar theme
Plugin 'scrooloose/syntastic'   " syntax checker
Plugin 'kien/ctrlp.vim'    " fuzzy file finder
Plugin 'pangloss/vim-javascript'    " js syntax highlighting
Plugin 'raimondi/delimitmate'   " indentation
Plugin 'taglist.vim'    " source code browser
Plugin 'valloric/youcompleteme'    " completion engine
Plugin 'tpope/vim-surround'    " quoting and parenthesis manipulation
Plugin 'marijnh/tern_for_vim'   " parse js suggestions better
Plugin 'elzr/vim-json'   " syntax highlighting for json   
Plugin 'mxw/vim-jsx'    " syntax highlighting for jsx
Plugin 'othree/javascript-libraries-syntax.vim'    " syntax for js libraries
Plugin 'othree/yajs.vim'    " ES6 syntax and more
Plugin 'django.vim'    " Syntax highlighting for django
Plugin 'mattn/emmet-vim'    " Emmet
Plugin 'gregsexton/matchtag'    " Highlight html/xml tags

" Color Schemes
" --------------------------------------------------
Plugin 'altercation/vim-colors-solarized'   " solarized color scheme
Plugin 'CycleColor'    " cycle through all available colorschemes
Plugin 'crusoexia/vim-monokai'     " monokai colorscheme
Plugin 'chriskempson/base16-vim'    " tomorrow colorschemes

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" ---------------------------------------------------
" CONFIG
" ---------------------------------------------------

" => General
" ---------------------------------------------------
" Autoread when a file is changed from the outside
set autoread

" Fast saving
nmap <leader>w :w!<cr>

" => Mappings
" ---------------------------------------------------
let mapleader = "\<Space>"

" Map : to ;
nnoremap ; :

" Reload .vimrc
nmap <leader>sv :source $MYVIMRC<CR>

" => Navigating
" ---------------------------------------------------
" Move 10 lines to the cursor (j,k)
set so=8

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" => User Interface
" ---------------------------------------------------
" Show line numbers 
set number

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" Try to be smart about cases when searching
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Turn magic on for regular expressions
set magic

" Show matching brackets when cursor is over them
set showmatch
set mat=2	" blink frequency

" => Text, tab and indent related
" ----------------------------------------------------
" Line wrapping 
set wrap

" Be smart when using tabs
set smarttab

" Linebreak on 500 characters
set lbr
set tw=500

" Use spaces instead of tabs
set expandtab

" 1 tab == 4 spaces 
set shiftwidth=4
set tabstop=4

" Auto indent
set ai

" Smart indent
set si

" Indentation fix to move brace 2 lines down and indent line before
"inoremap { {<CR>}<Esc>O<TAB>


" => Status Line
" ----------------------------------------------------
" Always show the status line
set laststatus=2

" => Colors and Fonts
" ----------------------------------------------------
" Syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal 
set t_Co=256

" Disable Background Color Erase
set t_ut=

"set background=dark
colorscheme monokai

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" => Files, Backups and Undo
"-----------------------------------------------------
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" ----------------------------------------------------
" PLUGIN CONFIG
" ----------------------------------------------------
" => Vim-Airline
" ----------------------------------------------------
let g:airline_powerline_fonts = 1

" Enable fugitive.vim integration
let g:airline#extensions#branch#enabled = 1

" Change text for when no branch is detected
let g:airline#extensions#branch#empty_message = ''

" Truncate long branch names to a fixed length
let g:airline#extensions#branch#displayed_head_limit = 10

" => Vim-Airline-Themes
" ----------------------------------------------------
let g:airline_theme='luna'

" => NERDTree
" ----------------------------------------------------

" Auto-open NERDTree on Vim startup
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Shortkey for NERTree
map <C-n> :NERDTree<CR>

" Shortkey for NERDTree toggle
map <F2> :NERDTreeToggle<CR>

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" => DelimitMate
" -------------------------------------------------------
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1

" => YouCompleteMe
" --------------------------------------------------------
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
let g:ycm_collect_identifiers_from_tags_files = 1 
let g:ycm_use_ultisnips_completer = 1 
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1 

" => Javascript Libraries Syntax
" --------------------------------------------------------
let g:used_javascript_libs = 'react'

" => Syntastic
" --------------------------------------------------------
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['pylint']

" => Tern for Vim
" --------------------------------------------------------
let g:tern_show_argument_hints='on_hold'

" => Emmet
" --------------------------------------------------------
let g:user_emmet_leader_key='<C-Z>'

" => Vim-jsx
" --------------------------------------------------------
let g:jsx_ext_required = 0
