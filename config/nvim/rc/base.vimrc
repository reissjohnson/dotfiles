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

"VTRTestRunner
nnoremap <leader>va :VtrAttachToPane<cr>
nnoremap <leader>vv :VtrSendCommand<space>
nnoremap <leader>v<space> :VtrSendCommand<cr>

let test#strategy = 'vtr'
  nnoremap <leader>tn :VtrAttachToPane<cr><bar>:TestNearest<cr>
  nnoremap <leader>tf :VtrAttachToPane<cr><bar>:TestFile<cr>
  nnoremap <leader>ta :VtrAttachToPane<cr><bar>:TestSuite<cr>
  nnoremap <leader>tt :VtrAttachToPane<cr><bar>:TestLast<cr>

"vimfiler
nnoremap <leader>e :VimFilerCurrentDir<cr>
nnoremap <leader>ee :VimFilerBufferDir<cr>

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

" Denite
"

nnoremap <silent><leader>uu               :Denite -buffer-name=file_rec
    \ file_rec<cr>
nnoremap <silent><leader>um               :Denite -buffer-name=models
    \ -path=`getcwd()`/app/models
    \ file_rec<cr>
nnoremap <silent><leader>uc               :Denite -buffer-name=controllers
  \ -path=`getcwd()`/app/controllers
  \ file_rec<cr>
nnoremap <silent><leader>uv               :Denite -buffer-name=views
  \ -path=`getcwd()`/app/views
  \ file_rec<cr>
nnoremap <silent><leader>uj               :Denite -buffer-name=javascripts
  \ -path=`getcwd()`/app/assets/javascripts
  \ file_rec<cr>
nnoremap <silent><leader>us               :Denite -buffer-name=specs
  \ -path=`getcwd()`/spec
  \ file_rec<cr>
nnoremap <silent><leader>ub               :Denite -buffer-name=buffers
  \ buffer<cr>

:let g:vimfiler_as_default_explorer = 1 

set background=dark
set cursorline

