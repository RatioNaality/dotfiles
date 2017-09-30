" GENERAL
syntax enable           " enable syntax processing
set encoding=utf8       " utf8 encoding
set nowrap              " no linewrap
set laststatus=2        " always display status line
colorscheme solarized
set background=dark

" SPACES AND TABS
set tabstop=4           " number of visual spaces per tab
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4        " allows <> in visual to block (un)indent regions
set smarttab            " use shiftwidth for tabs instead of tabstop
set expandtab           " tabs are spaces
set autoindent          " autoindents

" UI CONFIG
set number              " show line number
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when needed
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" FOLDING
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" MAPPINGS
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
map <C-f> :CtrlP<CR>

inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
nnoremap <Left>  <NOP>
nnoremap <Right> <NOP>
nnoremap <Up>    <NOP>
nnoremap <Down>  <NOP>

" PLUGINS
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim           " set runtime path to include Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'                " filetree
Plugin 'majutsushi/tagbar'                  " tagbar
"Plugin 'vim-airline/vim-airline'            " status bar
"Plugin 'vim-airline/vim-airline-themes'     " status bar themes
"Plugin 'altercation/vim-colors-solarized'   " solarized theme
Plugin 'ctrlpvim/ctrlp.vim'                 " fuzzy finder
"Plugin 'jakedouglas/exuberant-ctags'        " tags
"Plugin 'scrooloose/syntastic'               " syntax error checker
"Plugin 'easymotion/vim-easymotion'          " more motion options
"Plugin 'airblade/vim-gitgutter'             " show git changes
"Plugin 'tpope/vim-fugitive'                 " git
"Plugin 'Xuyuanp/nerdtree-git-plugin'        " nerdtree git

call vundle#end()
filetype plugin indent on
hi clear SignColumn

" AIRLINE SETTINGS
"let g:airline_powerline_fonts=1             " add powerline symbols
"let g:airline_detect_paste=1                " show paste if in paste mode
"let g:airline#extension#tabline#enabled=1   " display all buffers when only one tab open
"let g:airline_theme='solarized'             " use solarized theme for status bar
"let g:airline_solarized_bg='dark'           " dark solarized version

" SYNTASTIC SETTINGS
"let g: syntastic_error_symbol = '✘'
"let g: syntastic_warning_symbol = '▲'
"augroup mySyntastic
"    au!
"    au FileType text let b:syntastic_mode = "passive"
"augroup END

" NERDTREE SETTINGS
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"let g:NERDTreeIndicatorMapCustom = {
"   \ "Modified"  : "✹",
"   \ "Staged"    : "✚",
"   \ "Untracked" : "✭",
"   \ "Renamed"   : "➜",
"   \ "Unmerged"  : "═",
"   \ "Deleted"   : "✖",
"   \ "Dirty"     : "✗",
"   \ "Clean"     : "✔︎",
"   \ 'Ignored'   : '☒',
"   \ "Unknown"   : "?"
"   \ }

" TAGBAR SETTINGS
let g:tagbar_autoclose=2

" VIM GITGUTTER SETTINGS
"let g:airline#extensions#hunks#non_zero_only=1
