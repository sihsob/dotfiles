" Install vundle if not already installed
if has("user_commands")
    " Setting up Vundle
    let VundleInstalled=0
    let vundle_readme=expand("$HOME/dotfiles/vim/.vim/bundle/Vundle.vim/README.md")
    if !filereadable(vundle_readme)
        echo "Installing Vundle..."
        echo ""
        silent !mkdir -p $HOME/dotfiles/vim/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle.git $HOME/dotfiles/vim/.vim/bundle/Vundle.vim
        let VundleInstalled=1
    endif
endif

" Vundle and package config
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'tpope/vim-fugitive'
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'atelierbram/Base2Tone-vim'
Plugin 'yuttie/hydrangea-vim'
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'

" All plugins MUST be added before the following line
call vundle#end()
filetype plugin indent on

" Brief Vundle help
" :PluginList               - lists configured plugins
" :PluginInstall            - installs plugins; append '!' to update
" :PluginUpdate             - another way to update plugin
" :PluginSearch foo         - searches for foo; append '!' to refresh local
"                             cache
" :PluginClean              - confirms removal of unused plugins; append '!' to
"                             auto-approve removal
" see :h vundle for more details or wiki for FAQ

" UI config - allow mouse control
set mouse=a

set laststatus=2
set noshowmode

set encoding=utf-8

set showcmd
set showmatch
set number

" Set whitespace
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap

" Do not make backup or swap files
set nobackup
set noswapfile
set nowritebackup

" Allows multiple files open w/o save
set hidden

" Set maximum text width
set textwidth=80

" Navigation options
" Highlight when searching
set hlsearch
" Ignore the case when searching
set ignorecase
set smartcase

" Control color scheme
syntax enable
set background=dark
set termguicolors
colorscheme Base2Tone_DrawbridgeDark
let g:lightline = {
    \ 'colorscheme': 'hydrangea',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
    \ }
