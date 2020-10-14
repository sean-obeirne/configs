set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" auto complete
Plugin 'valloric/youcompleteme'

" parnethesization
Plugin 'tpope/vim-surround'

" tree viewer
Plugin 'scrooloose/nerdtree'

" status line
Plugin 'vim-airline/vim-airline'
" themer
Plugin 'vim-airline/vim-airline-themes'

" commenting improvements
Plugin 'preservim/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


""" END PLUGINS """


" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim


" makes vim more vi-compatible
"set compatible


" syntax highlighting
if has("syntax")
  syntax on
endif




" vim jumps to last location when reponening file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" enable auto indent based on filetype
"if has("autocmd")
"  filetype plugin indent on
"endif
filetype plugin indent off

filetype plugin on

" Auto compile tex documents
autocmd BufWritePost *.tex silent! execute "!pdflatex % >/dev/null 2>&1" | redraw!

""" PLUGIN RELATED """

" keyboard mappings
map <F2> :NERDTreeToggle<CR>

" comment if not using dark background
set background=dark

"let g:airline_theme='base16'
let g:airline_theme='wombat'
"let g:airline_theme='solarized'
"let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1

" navigate splits
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" LaTeX mappings
map <F5> o\section{}<return><up><end><left>
map <F6> o\subsection{}<return><up><end><left>
map <F7> i<end><return>\item
map <F8> o\begin{itemize}<return>\item <return>\end{itemize}<return><up><up><end>

set showcmd		    " Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		    " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set expandtab		" Makes tabs into spaces
set ts=4		    " Makes each tab into 4 spaces
set sw=4		    " Makes each indent 4
set ai			    " Sets autoindent to simplify typing
set relativenumber  " Sets relativenumber to easier jump lines
set number          " also sets it so that we can see the linenumber

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

