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
