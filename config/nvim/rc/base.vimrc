" disable mouse
set mouse=

" tabs to spaces
set tabstop=2 shiftwidth=2 shiftround expandtab
" set column width and highlight after
set textwidth=80 colorcolumn=+1
set number relativenumber
" set and show invisibles
" Cursor line

" backspace behaviour
set backspace=2

" vim pane auto balance
autocmd! VimResized * :wincmd =

" Ignore the case of normal letters
set ignorecase
" if the search pattern contains upper case characters, override ignorecase
set smartcase

" Enable incremental search
set incsearch
" highlight search
set hlsearch
" search wrap around the end of the file
set wrapscan

" ========== Keymapping for default vim commands ===============================
" ---------- Normal ------------------------------------------------------------
nnoremap <leader>q :quit<cr>
nnoremap <leader>w :write<cr>

" split panes
nnoremap <leader>\\ :vsplit<cr>
nnoremap <leader>'' :split<cr>

" reload init file
nnoremap <leader>r :source $MYVIMRC<cr>

" toggle search highlight
nnoremap <leader>h :set hlsearch!<cr>

inoremap <left> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <right> <nop>

inoremap jj <esc>
inoremap <c-c> <nop>
set background=dark
