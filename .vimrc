"""""""""""""""""""""""""""""""""""""
" 初始设置 
"""""""""""""""""""""""""""""""""""""
if has("win32")
  let $VIMFILES = $VIM.'/vimfiles'
else
  let $VIMFILES = $HOME.'/.vim'
endif
"""""""""""""""""""""""""""""""""""""
" vim-plug
"""""""""""""""""""""""""""""""""""""
call plug#begin()   " Make sure you use single quotes
    
" Airline
    Plug 'vim-airline/vim-airline'
    	let g:airline_powerline_fonts = 1
    	let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#buffer_nr_show = 1
        let g:airline#extensions#tabline#left_sep = ' '
        let g:airline#extensions#tabline#left_alt_sep = '|'
        let g:airline#extensions#whitespace#enabled = 0
        let g:airline#extensions#whitespace#symbol = '!'
        if !exists('g:airline_symbols')
        	let g:airline_symbols = {}
        endif
        "let g:airline_left_sep = '▶'
		let g:airline_left_alt_sep = '❯'
        "let g:airline_right_sep = '◀'
		let g:airline_right_alt_sep = '❮'
		let g:airline_symbols.linenr = '¶'
		let g:airline_symbols.branch = '⎇'

" Airline Themes
    Plug 'vim-airline/vim-airline-themes'
    	"let g:airline_theme='cool'
    	let g:airline_theme='solarized'

" Solarized
    Plug 'altercation/vim-colors-solarized'
	    syntax enable
 	    set background=dark
	    colorscheme solarized
	    "let g:solarized_termcolors=256
 	    call togglebg#map("<F5>")

" Vimdoc-zh
    Plug 'yianwillis/vimcdoc'
    
" VimWiki
    Plug 'vimwiki/vimwiki'
    	set nocompatible
	    filetype plugin on
	    syntax on
        map <S-F4> :VimwikiAll2HTML<cr>
        map <F4> :Vimwiki2HTML<cr> 
        let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code' 
        "多个维基项目的配置
        "let g:vimwiki_list = [{'path': 'E:/My Dropbox/vimwiki/',
        "      \ 'html_header': 'E:/My Dropbox/Public/vimwiki_template/header.htm',
        "      \ 'html_footer': 'E:/My Dropbox/Public/vimwiki_template/footer.htm',
        "      \ 'diary_link_count': 5},
        "      \{'path': 'Z:\demo\qiuchi\wiki'}]
        "
        "对中文用户来说，我们并不怎么需要驼峰英文成为维基词条
        let g:vimwiki_camel_case = 0
        
        "标记为完成的 checklist 项目会有特别的颜色
        let g:vimwiki_hl_cb_checked = 1
        
        "我的 vim 是没有菜单的，加一个 vimwiki 菜单项也没有意义
        let g:vimwiki_menu = ''
        
        "是否开启按语法折叠  会让文件比较慢
        "let g:vimwiki_folding = 1
        
        "是否在计算字串长度时用特别考虑中文字符
        let g:vimwiki_CJK_length = 1
        
        "详见下文...
        let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,del,br,hr,div,code,h1'

        "是否在词条文件保存时就输出html
        "\ 'auto_export': 1,

" Calendar
    Plug 'mattn/calendar-vim'
        map <F8> :Calendar<cr>

" Markdown
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/mathjax-support-for-mkdp'
    Plug 'iamcco/markdown-preview.vim'
        let g:mkdp_path_to_chrome = "w3m"
        let g:mkdp_auto_start = 0
        let g:mkdp_auto_open = 1
        let g:mkdp_auto_close = 1
        let g:mkdp_refresh_slow = 0
        let g:mkdp_command_for_global = 0


call plug#end() " Initialize plugin system

"""""""""""""""""""""""""""""""""""""
" 全局设置 
"""""""""""""""""""""""""""""""""""""
    "设置工作目录为当前编辑文件的目录
    set bsdir=buffer
    set autochdir
    "根据编辑模式更改输入法光标颜色，同时禁用IME自动切换
    if has('multi_byte_ime')
        hi Cursor guifg=bg guibg=Orange gui=NONE
        hi Cursor guifg=NONE guibg=Skyblue gui=NONE
        set iminsert=0 imsearch=0
    endif

" Format
    set autoindent
    set smartindent
    set tabstop=4
    set shiftwidth=4       " shiftwidth写代码时用到,缩进为4字符
    set shiftround
    set expandtab
    set softtabstop=4
    set foldmethod=indent

" 快捷键
    let mapleader=","
    let g:mapleader=","	" set mapleader变量
    nmap <leader>s :source $HOME/.vimrc<cr>
    nmap <leader>e :e $HOME/.vimrc<cr>
    map <silent> <leader>w :w! <cr>
    nmap <leader>rc :tabe $HOME/.vimrc<cr>
    nmap <leader>q :q<cr>
    "autocmd! bufwritepost _vimrc source $vim\_vimrc
    
    "快速清除高亮
        nmap <silent> <leader><CR> :noh<CR>     

    " 窗口跳转
        map <c-h> <ESC><c-w>h
        map <c-l> <ESC><c-w>l
        map <c-j> <ESC><c-w>j
        map <c-k> <ESC><c-w>k

    " 标签
        map <leader>tn :tabnew<cr>
        map <leader>tc :tabclose<cr>
        map <leader>th :tabp<cr>
        map <leader>tl :tabn<cr>

    " 窗口调整
        nnoremap <M-j> :resize +5<cr>
        nnoremap <M-k> :resize -5<cr>
        nnoremap <M-h> :vertical resize -5<cr>
        nnoremap <M-l> :vertical resize +5<cr>

    " Buff
        nnoremap <C-N> :bn<CR>
        nnoremap <C-P> :bp<CR>

    " number
        nnoremap <F2> :setlocal number!<cr>
        set number
        set numberwidth=2

