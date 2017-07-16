"my vim configuration 
"add by zhangc
"2017/7/15

"basic settings
set number 			      "show line numbers
set mouse=a
syntax on
"colorscheme onedark
set autoread 	              "detect when a file is changed

"switch cursor to line when in insert mode, and block when not 
"only works under gui 
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175

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
map <F2> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
"when all files closed, auto quit NerdTree
autocmd bufenter * if(winnr('$') == 1 && exists("b:NERDTree")) | q | endif

