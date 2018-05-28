set number "显示行号
set nowrap    "不自动折行
set showmatch    "显示匹配的括号
set scrolloff=3        "距离顶部和底部3行"
set mouse=a        "启用鼠标
set hlsearch        "搜索高亮
syntax on    "语法高亮
set ambiwidth=double

" 允许退格键删除和tab操作  
set smartindent  
set smarttab  
set expandtab  
set tabstop=4  
set softtabstop=4  
set shiftwidth=4  
set backspace=2
set textwidth=79
colorscheme solarized

"启动时隐去援助提示
set shortmess=atI

set guifont=Courier_New:h15:cANSI   " 设置字体  

set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限 

"隐藏工具栏菜单栏
set go=
  
"列出当前目录文件  
map <F3> :tabnew .<CR> 

"列出当前目录文件  
map <F5> :NERDTree .<CR> 

"运行python  
map <F6> :!python.exe %<CR>
