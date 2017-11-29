" disable mouse
set mouse=
" tabs to spaces
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
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
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

"VTRTestRunner
nnoremap <leader>va :VtrAttachToPane<cr>
nnoremap <leader>vv :VtrSendCommand<space>
nnoremap <leader>v<space> :VtrSendCommand<cr>

let test#strategy = 'vtr'
  nnoremap <leader>tn :TestNearest<cr>
  nnoremap <leader>tf :TestFile<cr>
  nnoremap <leader>ta :TestSuite<cr>
  nnoremap <leader>tt :TestLast<cr>

nnoremap <leader>gf :Gfetch<cr>
nnoremap <leader>gc :Gcommit -m ''<left>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr><c-w><s-h>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gp :Gpush<cr>
nnoremap <leader>gl :Gpull<cr>

"codesearch
nnoremap <leader>cs :Ag<space>
nnoremap <leader>ccl :ccl<cr>
nnoremap <leader>cco :cope<cr>

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

" tabs
nnoremap <leader>tv :tabn<cr>
nnoremap <leader>tb :tabe<cr>

"Deoplete

inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<c-h>"

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

call denite#custom#map('insert', '<tab>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<s-tab>', '<denite:move_to_previous_line>', 'noremap')

" Vim Google
nnoremap <leader>go :Google 

"Vim JSX
let g:jsx_ext_required = 0

"Vim Prettier

let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync

" max line length that prettier will wrap on
let g:prettier#config#print_width = 80
" number of spaces per indentation level
let g:prettier#config#tab_width = 4
" single quotes over double quotes
let g:prettier#config#single_quote = 'true'
" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'
" none|es5|all
let g:prettier#config#trailing_comma = 'none'
" flow|babylon|typescript|postcss|json|graphql
let g:prettier#config#parser = 'flow'

"Ale
scriptencoding utf-32

let g:ale_linters = {
      \   'haml': ['haml_lint'],
      \   'javascript': ['eslint', 'flow'],
      \   'jsx': ['eslint', 'flow'],
      \   'ruby': ['rubocop'],
      \   'yaml': ['yamllint'],
      \ }

let g:ale_fixers = {
      \   'ruby': ['rubocop'],
      \ }

nnoremap <silent><C-n> :ALENext<cr>
nnoremap <silent><C-p> :ALEPrevious<cr>
nnoremap <silent><localleader>f   :ALEFix<cr>

let g:ale_sign_error = '••'
let g:ale_sign_warning = '••'

highlight link ALEErrorSign DiffDelete
highlight link ALEError DiffDelete

highlight link ALEWarningSign Todo
highlight link ALEWarning Todo

let g:ale_echo_msg_format = '%linter%: %s'

"Vim Emmit

let g:user_emmet_leader_key='<c-e>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}


:let g:vimfiler_as_default_explorer = 1 

set background=dark
set cursorline

noremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
