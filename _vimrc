set nocompatible              " 去除VI一致性,必须要添加
filetype on                   " 必须要添加


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'

" Plugin Start
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
" Plugin End


call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本



"
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"



filetype plugin on			" 根据侦测到的不同类型加载对应的插件
filetype indent on			" 自适应不同语言的智能缩进


""""""""""""""""""""""""""""""
" Vim Config 
""""""""""""""""""""""""""""""

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
set expandtab				" 将制表符扩展为空格  
set tabstop=4				" 设置编辑时制表符占用空格数  
set softtabstop=4  
set shiftwidth=4			" 设置格式化时制表符占用空格数 
set backspace=2
set textwidth=79

" 设置缩进
set tabstop=4				" 设置Tab长度为4空格
set shiftwidth=4			" 设置自动缩进长度为4空格
set autoindent				" 继承前一行的缩进方式，适用于多行注释

syntax on    				" 语法高亮
set wildmenu				" vim 自身命令行模式智能补全
set ambiwidth=double			" 防止特殊符号无法正常显示
set showmatch				" 显示括号匹配
set hlsearch        			" 搜索高亮
set incsearch				" 开启实时搜索功能
set ignorecase				" 搜索时大小写不敏感
set nu					" 显示行号
set nowrap    				" 不自动折行
set cursorline				" 突出显示当前行
set cursorcolumn			" 突出显示当前列
set paste				" 设置粘贴模式
set listchars=tab:>-,trail:-		" 显示空格和tab键
set laststatus=2			" 总是显示状态栏
set ruler				" 显示光标当前位置
set shortmess=atI			" 启动时隐去援助提示
set guifont=Courier_New:h15:cANSI   	" 设置字体  





map <silent> <F11> :call ToggleFullscreen()<CR>			" 全屏开/关快捷键
autocmd BufWritePost $MYVIMRC source $MYVIMRC			" 让vimrc配置变更立即生效



""""""""""""""""""""""""""""""
" NERDTree Config 
""""""""""""""""""""""""""""""
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1

au VimEnter * NERDTree						" 设定默认开启目录
map <leader>t :NERDTreeToggle<CR>				" 关闭NERDTree快捷键
"let NERDTreeShowHidden=0					" 是否显示隐藏文件
let NERDTreeWinSize=31						" 设置宽度
let g:nerdtree_tabs_open_on_console_startup=1			" 在终端启动vim时，共享NERDTree
let NERDTreeIgnore=['\.pyc','\~$','\.swp']			" 忽略一下文件的显示
let NERDTreeShowBookmarks=1					" 显示书签列表



""""""""""""""""""""""""""""""
" Taglist Config 
""""""""""""""""""""""""""""""
"map <F2> <Esc>:TlistToggle<Cr>					"使用“F2”键就可以打开/关闭taglist窗口
"let Tlist_Show_Menu = 1
"let Tlist_Show_One_File = 1           				" 不同时显示多个文件的tag，只显示当前文件的
"let Tlist_Exit_OnlyWindow = 1         				" 如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1         			" 在右侧窗口中显示taglist窗口 







