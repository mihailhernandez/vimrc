" Hello.
" I'm Mihail Hernandez.
" 
" At the time of writing this (10/09/2019) I'm a student and I got interested
" in learing and exploring the vim text editor. 
"
" This is my .vimrc file that I'm going to learn on. 
"
" Currently I'm using the Vundle VIM plugin manager located at:
" https://github.com/VundleVim/Vundle.vim
"
" I do not own nor do I claim to own any of the code in the plugin manager 
" and the plugins that I use in this vimrc file.
"
" I'll provide links to the resources from which I obtain my data/plugins. 

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'othree/html5.vim'      " https://github.com/VundleVim/Vundle.vim 
Plugin 'scrooloose/nerdtree'   " https://github.com/scrooloose/nerdtree

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

" Nerd TREE settings -------------------------------------------------------- 
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeToggle<CR>
" ---------------------------------------------------------------------------

" Numbers next to lines -----------------------------------------------------
:set number
" ---------------------------------------------------------------------------

