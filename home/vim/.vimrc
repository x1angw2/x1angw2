"#############################
"		 This Wezhon vimrc
"#############################


" ---------------------------
"    Basic Settings
" ---------------------------
syntax  enable			" 语法高亮
set number			" 显示行号
set relativenumber		" 显示相对行号
set cursorline			" 突出显示当前行
"set cursorcolumn		" 突出显示当前列
set wrap			" 折行
set wildmenu			" 命令补全时提示
set hlsearch			" 搜索关键字高亮
set ignorecase			" 搜索忽略大小写
set mouse=a		" 使用鼠标
"set encoding=utf-8		" 编码
"set fileencoding=utf-8
set scrolloff=5			" 保留5行
set showmatch				" 显示匹配的括号
"set signcolumn=number




"------------------------------------------------
set tabstop=2
set shiftwidth=2		" 缩进
set softtabstop=2
"------------------------------------------------
"       	不同模式光标不同
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"------------------------------------------------
"						自动回到上次位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"------------------------------------------------
"set laststatus=2		" vim自带状态栏
"set statusline=[:%F][文件类型\:%Y][行数\:%l][列数\:%v][共%L行]%p%%
" 自带状态栏参数设置
"set statusline=%F%m%r%h%w%=\ [ft=%Y]\ %{\"[fenc=\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"]\"}\ [ff=%{&ff}]\ [asc=%03.3b]\ [hex=%02.2B]\ [pos=%04l,%04v][%p%%]\ [len=%L]
"------------------------------------------------
set nocompatible
"------------------------------------------------
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"------------------------------------------------
"set showmode			" 未知
"set showcmd			" 未知
"set incsearch		" 未知

" ---------------------------
" 	Map Settings
" ---------------------------
let mapleader=','
map S :w<CR>
map Q :q<CR>
map R :source ~/.vimrc<CR>
map NL :nohls<CR>

" ---------------------------
" 	Plug Setting
" ---------------------------
call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	"状态栏插件
	Plug 'vim-airline/vim-airline-themes'
	"下边栏美化

	Plug 'connorholyday/vim-snazzy'
	"配色插件

	Plug 'dhruvasagar/vim-table-mode'
	"Markdown 表格格式化插件

	"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd ap    p && yarn install'  }
	"Markdown实时预览
	Plug 'iamcco/mathjax-support-for-mkdp'
	"Markdownk 添加Latex支持
  Plug 'iamcco/markdown-preview.vim'

	Plug 'preservim/nerdtree'
	"文件目录树

	Plug 'yianwillis/vimcdoc'
	"vimdoc chinese
	Plug 'scrooloose/syntastic'
	"语法纠错
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" 自动补全插件
	Plug 'mhinz/vim-startify'
	" 启动历史文件记录
	Plug 'yggdroot/indentline'
	" 缩进线
	Plug 'w0ng/vim-hybrid'
	" 主题
	Plug 'ctrlpvim/ctrlp.vim'
	" 快速搜索文件
	Plug 'easymotion/vim-easymotion'
	" 屏幕内快速跳转
	Plug 'tpope/vim-surround'
	" 成对括号
	Plug 'fatih/vim-go'
	" go语言补全
	Plug 'altercation/vim-colors-solarized'
	" 主题配色
	Plug 'bestw/vim-cheat40'
call plug#end()

"------vim-NERDTree------
"map <C-n> :NERDTreeToggle<CR>
"map T :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<cr>
nnoremap <leader>t :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeIgnore = [
								\ '\.git$']
"-----vim-snazzy配色-----
"color snazzy										# 主题配色
"let g:SnazzyTransparent = 1		# 背景透明


"-----vim-table-mode-----
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

"-------coc.vim------------
let g:coc_global_extensions = ['coc-jedi','coc-python','coc-json','coc-vimlsp','coc-marketplace']

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-o> coc#refresh()
vmap <leader>p <Plug>(coc-format-selected)
nmap <leader>p <Plug>(coc-format-selected)


"--------indentline--------
"let g:indentLine_setColors = 255
"let g:indentLine_color_term = 255

"--vim-colors-solarized----
"set background=dark
"colorscheme solarized
"colorscheme hybrid

"-----------ctrlp----------
let g:ctrlp_map = '<c-p>'

"----------easymotion------
map ss <Plug>(easymotion-s2)

"--------vim-surround------
" ys iw "		 添加
" cs " '		 替换
" ds '			 删除 

"----------airline---------
"let g:airline_section_y = airline#section#create(['%{strftime("%D")}'])
"let g:airline_section_z = airline#section#create(['%{strftime("%H:%M")}'])

"-----------cheat40--------
let g:cheat40_use_default = 0
