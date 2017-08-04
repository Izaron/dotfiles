set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'valloric/youcompleteme'
Plugin 'tkztmk/vim-vala'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1

" Tab navigation
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>

" New tab short-cut
nnoremap <F9> :tabe 

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

set tabstop=4
set shiftwidth=4
set autoindent

colorscheme mango
set number
set foldmethod=syntax
