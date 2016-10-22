set nocompatible              " be iMproved, required
filetype on                  
syntax on
filetype indent plugin on
set showcmd
set autoindent
set backspace=indent,eol,start

set shiftwidth=4
set softtabstop=4
set expandtab

set number
set relativenumber

set cursorline "当前行高亮

map <F2> :NERDTreeToggle<CR>
map! <F2> <Esc>:NERDTreeToggle<CR>

" powerline settings
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:Powerline_colorscheme='solarized256'

"set clipboard+=unnamed "连接vim和系统的剪贴板


"remove the background color
"hi Normal guibg=NONE ctermbg=NONE 

"autocmd vimenter * NERDTree "自动开启nerdtree
map  :silent! NERDTreeToggle
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'

Plugin 'altercation/vim-colors-solarized'
Plugin 'https://github.com/chriskempson/tomorrow-theme.git'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'chilicuil/vim-sml-coursera' "Programming Languages

Plugin 'vim-scripts/Conque-GDB' "gdb plug
Plugin 'Lokaltog/vim-powerline' "powerline
Plugin 'morhetz/gruvbox' "Grubox colorscheme

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Gruvbox colorscheme configuration
set background=dark
let g:gruvbox_bold=1
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
