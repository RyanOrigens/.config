set number
set mouse=a
set clipboard+=unnamedplus
set textwidth=80
" set signcolumn=yes "

set autoindent expandtab tabstop=2 shiftwidth=2

" Start UP

" autocmd VimEnter * ChromiumReloadStart

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary' " For commenting gcc & gc
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons'
" Plug 'https://github.com/neoclide/coc.nvim' " For Autocompleting N
Plug 'https://github.com/Yggdroot/indentLine'
Plug 'https://github.com/lordm/vim-browser-reload-linux'
Plug 'https://github.com/vimwiki/vimwiki'
Plug 'https://github.com/junegunn/goyo.vim'

" NERDTree Toggle
nnoremap <silent> <expr> <C-F> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTree<CR>" : "\:NERDTree<CR>"

" Goyo Toggle
nnoremap <silent> <C-K> :Goyo<CR>

colorscheme delek

call plug#end()

" Programming Dictionary
nnoremap <A-m> :CocList diagnostics<CR>
nnoremap <C-S-m> :CocList diagnostics<CR>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>\<Esc>" : "\<Esc>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

