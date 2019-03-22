"========================================  
" File Name: .vimrc  
" Author: Bqrookie 
" Description: Vim配置文档 for Linux  
" Date: 2019.03.22  
"========================================  


"==========================================
" General Settings
"==========================================
set nocompatible                        " 去除VI一致性,必须要添加
filetype on                             " 必须要添加
set shortmess=atI                       " 启动时隐去援助提示
set mouse=a                             " 启用鼠标


"==========================================
" Display Settings
"==========================================
set nu                                  " 显示行号
syntax on                               " 语法高亮
set ruler                               " 显示光标当前位置
set hlsearch                            " 搜索高亮
set laststatus=2                        " 总是显示状态栏
colorscheme Tomorrow-Night              " 设置主题
set guifont=Courier_New:h15:cANSI       " 设置字体


"==========================================
"Code Settings
"==========================================
set paste                               " 设置粘贴模式
" 允许退格键删除和tab操作  
set smartindent  
set smarttab  
set expandtab                           " 将制表符扩展为空格

set tabstop=4                           " 设置编辑时制表符占用空格数
set softtabstop=4  

set shiftwidth=4                        " 设置格式化时制表符占用空格数
set backspace=2
set textwidth=79

" 设置缩进
set tabstop=4                           " 设置Tab长度为4空格
set shiftwidth=4                        " 设置自动缩进长度为4空格
set autoindent                          " 继承前一行的缩进方式，适用于多行注释

set wildmenu                            " vim 自身命令行模式智能补全
set ambiwidth=double                    " 防止特殊符号无法正常显示
set showmatch                           " 显示括号匹配
set incsearch                           " 开启实时搜索功能
set ignorecase                          " 搜索时大小写不敏感
set nowrap                              " 不自动折行
set cursorline                          " 突出显示当前行
set cursorcolumn                        " 开启实时搜索功能
set ignorecase                          " 搜索时大小写不敏感
set nowrap                              " 不自动折行
set cursorline                          " 突出显示当前行
set cursorcolumn                        " 突出显示当前列


"==========================================
" Other Settings
"==========================================


"==========================================
" HotKey Settings
"==========================================




