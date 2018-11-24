set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
" Plugin 'tpope/vim-fugitive'


" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
" Plugin 'L9'
Plugin 'The-NERD-tree'

" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
" Plugin 'git://git.wincent.com/command-t.git'


" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
" Plugin 'file:///home/gmarik/path/to/plugin'

" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
" Plugin 'ascenator/L9', {'name': 'newL9'}

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后



" 设置编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 启用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key


" 允许退格键删除和tab操作  
set smartindent  
set smarttab  
set expandtab  
set tabstop=4  
set softtabstop=4  
set shiftwidth=4  
set backspace=2
set textwidth=79

" 设置缩进
set tabstop=4				" 设置Tab长度为4空格
set shiftwidth=4			" 设置自动缩进长度为4空格
set autoindent				" 继承前一行的缩进方式，适用于多行注释


syntax on    				" 语法高亮
set ambiwidth=double			" 防止特殊符号无法正常显示
set showmatch				" 显示括号匹配
set mouse=a       			" 启用鼠标
set hlsearch        			" 搜索高亮
set nu					" 显示行号
set nowrap    				" 不自动折行
set cursorline				" 突出显示当前行
set cursorcolumn			" 突出显示当前列
set paste				" 设置粘贴模式
set listchars=tab:>-,trail:-		" 显示空格和tab键
set laststatus=2			" 总是显示状态栏
set ruler				" 显示光标当前位置
set shortmess=atI			" 启动时隐去援助提示
set guifont=Courier_New:h13:cANSI   	" 设置字体  

autocmd BufWritePost $MYVIMRC source $MYVIMRC	" 让vimrc配置变更立即生效


""""""""""""""""""""""""""""""""""""""""""NERDTree配置
"设定默认开启目录
au VimEnter * NERDTree 

" 关闭NERDTree快捷键
map <leader>t :NERDTreeToggle<CR>

" 是否显示隐藏文件
let NERDTreeShowHidden=1

" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1

" 设置宽度
let NERDTreeWinSize=31

" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']

" 显示书签列表
let NERDTreeShowBookmarks=1
