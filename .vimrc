execute pathogen#infect()

set nocompatible
syntax on
set nu
filetype indent plugin on

" Necessary to get color scheme to override iTerm's
set t_Co=256
colorscheme OceanicNext
set background=dark

" Keymaps
let mapleader=","
nnoremap <silent> <F4> :set cursorline!<CR>
noremap <Leader>n :NERDTreeToggle<CR>

" Quickly set current directory to match current buffer
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" Ignore files
set wildignore+=**/node_modules

set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

