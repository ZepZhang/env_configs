"my vim configuration 
"add by zhangc
"2017/7/15

"basic settings
set nu
set mouse=a
syntax on

"vundle
set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
call vundle#end()            " required
filetype plugin indent on    " required

"key binding
map <C-n> :NERDTreeToggle<CR>
