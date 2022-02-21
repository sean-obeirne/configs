set nocompatible              " be iMproved, required
filetype off                  " required
if has('python3')
endif

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

" wiki
Plugin 'vimwiki/vimwiki'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

let g:vimwiki_list = [{'path': '~/documents/vimwiki/'}]

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
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.maxlinenr = '㏑'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = 'Ɇ'
"let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
"let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' '
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

"" old vim-powerline symbols
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
"let g:airline_symbols.linenr = '⭡'

let g:airline_left_sep = ' '
let g:airline_right_sep = ' '

" navigate splits
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" custom shortcuts
" replace word under cursor with yanked text
nmap <silent> <C-a> P<Right>de
" reformat paragraph
map <F9> {gq}<C-o><C-o>
" C-s to save
imap <C-s> <Esc>:w<return>gi
map <C-s> <Esc>:w<return>
" C-w to exit without saving
nmap <C-w> <Esc>:q!<return>
imap <C-w> <Esc>:q!<return>
" C-x to save and exit
map <C-x> <Esc>:wq<return>
imap <C-x> <Esc>:wq<return>
" C-f to fold to mark 'k
nmap <C-f> zf'k

" LaTeX mappings
"map <F5> o\section{}<return><up><end><left>
"map <F6> o\subsection{}<return><up><end><left>
"map <F7> i<end><return>\item
"map <F8> o\begin{itemize}<return>\item <return>\end{itemize}<return><up><up><end>

set showcmd		    " Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		    " Hide buffers when they are abandoned
set mouse=a		    " Enable mouse usage (all modes)
set expandtab		" Makes tabs into spaces
set ts=4		    " Makes each tab into 4 spaces
set sw=4		    " Makes each indent 4
set ai			    " Sets autoindent to simplify typing
set relativenumber  " Sets relativenumber to easier jump lines
set number          " also sets it so that we can see the linenumber
set clipboard=unnamedplus
"set textwidth=73


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

