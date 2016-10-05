set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mhartington/oceanic-next'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'

" Testing these plugins out
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-unimpaired'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tsaleh/vim-align'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dsawardekar/wordpress.vim'
Plugin 'terryma/vim-multiple-cursors'

" Not sure if this really works
Plugin 'Smart-Tabs'

call vundle#end()
filetype plugin indent on     " required!
