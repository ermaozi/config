" 临时
map <Space> 2j
map <F2> <Esc>ZZ

" 记忆上次编辑位置
autocmd BufReadPost *
\ if line("'\"")>0&&line("'\"")<=line("$") |
\ exe "normal g'\"" |
\ endif

" 设置文件编码格式
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1,gbk,gb18030,gk2312
if has("win32")
  set fileencoding=chinese
else
  set fileencoding=utf-8
endif

" 允许退格键删除和tab操作 

set smartindent 

set smarttab 

set expandtab 

set tabstop=4 

set softtabstop=4 

set shiftwidth=4 

set backspace=2

set textwidth=79

set nu

" 高亮

syntax on

"colorscheme delek
"colorscheme elflord
"colorscheme murphy
colorscheme pablo
