source ~/.vim/vimrc.plugin

" 注意位置不能放在上面
syntax enable
set background=dark
set t_Co=256
let g:solarized_termtrans=1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=256
set cursorline
colorscheme solarized

" 删除键不好使
set backspace=indent,eol,start

" 显示tab
set list!
set listchars=tab:>-,trail:-
" set list listchars=tab:>-,eol:¶
let c_space_errors = 1


" 高亮搜索结果
set hlsearch
set incsearch
" 查找时忽略大小写set ic
set ignorecase

" tab转换为空格
set ts=4
set autoindent
set tabstop=4     " (ts) width (in spaces) that a <tab> is displayed as
set expandtab     " (et) expand tabs to spaces (use :retab to redo entire file)
set shiftwidth=4  " (sw) width (in spaces) used in each step of autoindent (aswell as << and >>)


" leader
let mapleader=";"
let g:mapleader=";"

" 显示行号
set number

" 鼠标定位上次打开的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


" 字符设置
set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,big5,latin1
set fenc=utf-8
set enc=utf-8
" language messages zh_CN.utf-8    设置所有的提示为中文

" 显示列宽
if exists('+colorcolumn')
    highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
    " highlight ColorColumn ctermbg=235 guibg=#2c2d27
    highlight ColorColumn guibg=#2d2d2d ctermbg=246
    highlight ColorColumn guibg=#000000 ctermbg=0
    set colorcolumn=80,100
    let &colorcolumn=join(range(81,100),",")
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif