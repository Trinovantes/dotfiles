"------------------------------------------------------------------------------
" Vundle
"------------------------------------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"------------------------------------------------------------------------------
" Others 
"------------------------------------------------------------------------------

set history=1000                                " remember lots of cmds
set ruler                                       " always show current position

set ignorecase                                  " ignore case when searching
set smartcase                                   " search smarter
set hlsearch                                    " highlight search results

set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start                  " allow backspacing over everything in insert mode
set expandtab                                   " spaces instead of tabs
set smarttab
set autoindent                                  " always set auto indenting on
set number                                      " enable line numbers
set mouse=a                                     " enable mouse

" next tab
nnoremap <silent> <C-Right> :tabnext<CR>

" prev tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" new tab
nnoremap <silent> <C-t> :tabnew<CR>

" close tab
nnoremap <silent> <C-w> :tabclose<CR>

" remap ; to : to avoid :W (due to shift)
nnoremap ; :

" shortcut to NERDTree plugin
nnoremap <silent> <C-o> :NERDTree<Cr>

" move through visual lines when lines wrap around
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

" syntax highlighting
set t_Co=256
colorscheme jellybeans
syntax on
