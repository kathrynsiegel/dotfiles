set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree.git'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'

Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'lervag/vimtex'
Plugin 'Valloric/YouCompleteMe'
Plugin 'hynek/vim-python-pep8-indent'

Plugin 'gregsexton/MatchTag'
Plugin 'skammer/vim-css-color'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'fatih/vim-go'

Plugin 'kien/ctrlp.vim'

call vundle#end()

set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase

syntax enable
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set mouse=a
set backspace=indent,eol,start
set number
let mapleader = ","
let g:maplead = ","
filetype plugin indent on
set autoindent
au BufNewFile,BufRead *.ejs set filetype=html

" Go
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['golint', 'errcheck']
let g:airline#extensions#tabline#enabled = 1

" ctrlp
map ff :CtrlP<.><cr>
let g:ctrlp_custom_ignore = 'tmp$\|\.git$\|\.hg$\|\.svn$\|.rvm$|.bundle$\|vendor$'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$']
map <C-n> :NERDTreeTabsToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end
let NERDTreeDirArrows = 1

colorscheme vj
"colorscheme summerfruit256

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

inoremap jk <Esc>
inoremap kj <Esc>

map :W :w
map :Q :q

vmap Q gq
nmap Q gqap

set guioptions+=lrb
set guioptions-=lrb

let g:ycm_autoclose_preview_window_after_completion=1

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_checkers = ['pyflakes']
let g:synastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_mode_map = { "mode": "active", "active_filetypes": [], "passive_filetypes": ["tex"] }
let g:syntastic_python_python_exec = '/usr/bin/local/python'
let g:syntastic_check_on_open = 1
nnoremap <F8> :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" Airline settings
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set pastetoggle=<F5>
set laststatus=2
