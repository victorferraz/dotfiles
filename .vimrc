set nocompatible ""Disable vi compatibility
execute pathogen#infect()
filetype on "Avoid Pathogem bugs
filetype off "Reload pahotogem funcionality

"Pathogen
runtime! bundle/vim-pathogen/autoload/pathogen.vim

"call pathogen#incubate() "Plugin init
silent! call pathogen#infect()
silent! call pathogen#helptags()

set nu
syntax on

"Mouse Scroller
set mouse=nicr

"Colorscheme 
let g:solarized_visibility="low"
let g:solarized_contrast="high"

set background=dark
colorscheme solarized

"Layout formart
set nu
set ai
set lcs=tab:>-,eol:$
set list
set incsearch ""Set incremental search
set hlsearch ""Highlight search results
set ignorecase ""Ignore capital letters when searching in all lower case
set smartcase ""Search using capital letter if a capital letter was typed on search
set encoding=utf-8 nobomb ""Avoids BOM and make sure to always use utf-8



""More custom options
set history=999
set undolevels=999
set nobackup
set nowritebackup
set noswapfile
set laststatus=2
""Formating
set expandtab ""Insert space chars instead of tab
set autoindent smartindent "Make identind stuff easier
set noautoindent
set copyindent
set tabstop=4 ""Default number of spaces a tab takes
set shiftwidth=4
set softtabstop=4 "Allow deletion of whole tabs
set backspace=indent,eol,start
set wildignore+=*.svn,*.hg,*.git,*.pyc ""Ignore all this extension files

"Activate different settings for different file types
autocmd Filetype html,htmldjango,xml,phtml,ctp set noexpandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype js,javascript,php set noexpandtab shiftwidth=4 tabstop=4 softtabstop=4

set clipboard+=unnamed

"Set the leader to comma
let mapleader =","
let g:mapleader=","

let g:EasyMotion_leader_key = '<leader>'

"Make ctrl+hjkl switch between splited screens
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Remap tab on normal mode to switch between buffers
nnoremap <silent> <tab> <C-^>

"Remap tab on normal mode to switch between buffers
nnoremap <silent> <leader><tab> :NERDTreeToggle<cr>

" Use flake8 Python
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--ignore="E501,E302,E261,E701,E241,E126,E127,E128,W801"'

"Syntastic
let g:syntastic_mode_map = { 'mode': 'active',
	\ 'active_filetypes': [],
	\ 'passive_filetypes': ['html'] }

"Use jshint (uses ~/.jshintrc)
let g:syntastic_javascript_checkers = ['jshint']

"Javascript Syntax
"autocmd FileType javascript call JavaScriptFold()
syntax on

"GO LANG
filetype indent on
autocmd FileType go compiler go

"Enable Emmet just html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key = '<c-s>'
