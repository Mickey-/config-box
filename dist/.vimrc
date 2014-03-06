"自定义变量
:let tab_width=2
":let tab_width=4

set backspace=2
set nocompatible
"set nobackup
"set nowritebackup
set ignorecase
"set makeprg=bjam
set nocp
set expandtab "自动将tab转为空格
set ai "开启自动缩进
:execute 'set tabstop='.tab_width
:execute 'set shiftwidth='.tab_width
:execute 'set softtabstop='.tab_width
"set tabstop=tab_width "一个TAB字符占多少个空格的位置
"set shiftwidth=tab_width "使用每层缩进的空格数
"set softtabstop=tab_width "方便在开启了et后使用退格（backspace）键，每次退格将删除X个空格

set nu
set hls "打开高亮
""set foldmethod=indent
"空格搜索
map <space> /
"新标签打开当前目录
map <F3> :tabe ./<CR>
map <F4> :DoxAuthor <CR>
map <F5> :set paste<CR>
map <F6> :set nopaste<CR>
map <F7> :set foldmethod=indent<CR>
map <F8> :set fenc=utf-8<CR>


inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gb18030
",utf-16,big5

syntax on
set background=dark
"colorscheme 
set t_Co=256

"---------------bundle vundle---------------
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'jQuery'
Bundle 'ap/vim-css-color'
Bundle 'DoxygenToolkit.vim'
Bundle 'mattn/emmet-vim'
Bundle 'groenewege/vim-less'
Bundle 'tern_for_vim'
Bundle 'editorconfig-vim'

filetype plugin indent on     " required!
"---------------powerline---------------
set laststatus=2
"let g:Powerline_symbols='unicode'
"---------------jQuery---------------
au BufRead,BufNewFile *.js set syntax=jquery
"---------------DoxygenToolkit---------------
let g:DoxygenToolkit_authorName="banbian, zangtao.zt@alibaba-inc.com"
"---------------vim-css-color---------------
let g:cssColorVimDoNotMessMyUpdatetime = 1
