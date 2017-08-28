" 初始设置 ====================
    set  nocompatible  " 关vi一致性模式
    " Set Path
        if has("win32")
            let $VIMFILES = $VIM.'/vimfiles'
        else
            let $VIMFILES = $HOME.'/.vim'
        endif
    "设置当前目录为工作目录
        set bsdir=buffer
        set autochdir
    " 语法高亮
        if has("syntax")
        	syntax on
        endif
    " huifu shhangci guangbiao weizhi
        if has("autocmd")
        	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
        	filetype plugin indent on
        endif

" 全局设置 ====================
     autocmd! bufwritepost .vimrc source $HOME/.vimrc
    " 不生成临时文件
	    set nobackup
	    set noswapfile
    set backspace=2 " 设置退格键可用
    set whichwrap+=b,s,<,>,[,],h,l " 光标可以跳行
    set linebreak   " 整词换行
    set history=50  "历史记录50条
    set gdefault    " 行内替换
    set viminfo+=!  "  保存全局变量
    set wildmenu    " 增强模式的命令行自动完成
    set iskeyword+=_,$,@,%,#,- " 符号不换行分割
    set autoread	" 文件被改动时自动载入
    set autowrite   " 自动保存
    set clipboard+=unnamed  " 共享剪贴板

" 显示 ========================
    " 缩进
        set autoindent  " 设置自动对齐(缩进)
     	set smartindent "  为C程序提供自动缩进
     	set tabstop=4   " 设置制表符(tab键)的宽度
        set shiftwidth=4    " shiftwidth缩进4字符
     	set shiftwidth=4	" (自动) 缩进4个空格
     	set softtabstop=4	" 设置软制表符的宽度
        set shiftround
        set expandtab
    " 折叠
        set foldmethod=indent	" 定义折叠方式
        	"manual 手工定义折叠
        	"indent 缩进定义折叠
        	"expr 表达式定义折叠
        	"syntax 用语法高亮来定义折叠
        	"diff 对没有更改的文本进行折叠
        	"marker 对文中的标志折叠
        set foldcolumn=3	" 设置折叠栏宽度

    " 搜索
        set hlsearch	" 搜索高亮
        set incsearch " 逐字匹配
        " 搜索模式里忽略大小写
         	set ignorecase
         	set smartcase
    " Highlight current line
        au WinLeave * set nocursorline nocursorcolumn
        au WinEnter * set cursorline cursorcolumn
    set cursorline cursorcolumn
    set showmatch " 显示匹配的括号
    set number " 显示行号
    set scrolloff=3	" 光标保持3行距离
    set ruler            "  显示标尺
    set matchtime=1 "  匹配括号高亮的时间是1/10秒
    set novisualbell    "  不要闪烁(不明白)
    "显示TAB健
        set list
        set listchars=tab:>-,trail:-

" 快捷键 ======================
    " Leader
    let mapleader=","
    let g:mapleader=","	" set mapleader变量
    nmap <leader>s :source $HOME/.vimrc<cr>
    nmap <leader>e :e $HOME/.vimrc<cr>
    map <silent> <leader>w :w! <cr>
    nmap <leader>rc :tabe $HOME/.vimrc<cr>
    nmap <leader>q :wq<cr>
    nmap <silent> <leader><CR> :noh<CR> "清除高亮

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
        "nnoremap <C-N> :bn<CR>
        nnoremap <C-P> :bp<CR>

    " number
        "nnoremap <F2> :setlocal number!<cr>

    " 自动补全
        :inoremap ( ()<ESC>i
        :inoremap ) <c-r>=ClosePair(' ) ' )<CR>
        :inoremap { {<CR>}<ESC>O
        :inoremap } <c-r>=ClosePair(' } ' )<CR>
        :inoremap [ []<ESC>i
        :inoremap ] <c-r>=ClosePair(' ] ' )<CR>
        :inoremap "   "" <ESC>i
        :inoremap '   '' <ESC>i
        function! ClosePair(char )
            if  getline(' . ' )[col(' . ' ) - 1 ] == a:char
                return  " \<Right> "
            else
                return  a:char
            endif
        endfunction
        filetype plugin indent on " 打开文件类型检测, 加了这句才可以用智能补全
        set completeopt=preview,menu " 代码补全

" vim-plug ====================
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
        "let g:airline_left_alt_sep = '❯'
        "let g:airline_right_sep = '◀'
        "let g:airline_right_alt_sep = '❮'
        let g:airline_symbols.linenr = '¶'
        let g:airline_symbols.branch = '⎇'

     " Airline Themes
        Plug 'vim-airline/vim-airline-themes'
        let g:airline_theme='solarized'

    " Solarized
        Plug 'altercation/vim-colors-solarized'
        syntax enable
        set background=dark
        colorscheme solarized
        let g:solarized_termtrans=1
        let g:solarized_degrade=1
        let g:solarized_bold=1
        let g:solarized_underline=1
        let g:solarized_italic=1
        let g:solarized_termcolors=16
        let g:solarized_contrast="normal"
        let g:solarized_visibility="normal"
        let g:solarized_diffmode="normal"
        let g:solarized_hitrail=1

    " VimWiki
        Plug 'vimwiki/vimwiki'
        set nocompatible
        filetype plugin on
        syntax on
        map <S-F4> :VimwikiAll2HTML<cr>
        map <F4> :Vimwiki2HTML<cr>
        let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code'
        "多个维基项目的配置
        let g:vimwiki_list = [{'path': '~/vimwiki/',
            \ 'diary_link_count': 5},
            \{'path': '~/vimwiki/wiki'}]
        let g:vimwiki_camel_case = 1    " 驼峰词
        let g:vimwiki_hl_cb_checked = 1 "完成的有色
        let g:vimwiki_menu = '' " vimwiki 菜单项
        "let g:vimwiki_folding = 1 " 按语法折叠,较慢
        let g:vimwiki_CJK_length = 1 " 字串长度考虑中文
        "详见下文...
        let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,del,br,hr,div,code,h1'
        "是否在词条文件保存时就输出html
        "\ 'auto_export': 1,

    " Calendar
        Plug 'mattn/calendar-vim'
        map <F8> :Calendar<cr>

    " Nerdtree
        Plug 'scrooloose/nerdtree'
        let NERDChristmasTree=0
        let NERDTreeWinSize=10
        let NERDTreeChDirMode=2
        let NERDTreeShowBookmarks=1
        let NERDTreeWinPos="left"
        " Ctrl+N 打开/关闭
        map <C-n> :NERDTreeToggle<CR>
        " 当不带参数打开Vim时自动加载项目树
        autocmd StdinReadPre * let s:std_in=1
        autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
        " 当所有文件关闭时关闭项目树窗格
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
        " 不显示这些文件
        let NERDTreeIgnore=['\.swp$','\.pyc$', '\~$', 'node_modules']
        " 不显示项目树上额外的信息，例如帮助、提示什么的
        let NERDTreeMinimalUI=1

    " Nerdtree-git-plugin
        " 这个插件可以显示文件的Git增删状态
        Plug 'Xuyuanp/nerdtree-git-plugin'

    " Syntastic
        Plug 'scrooloose/syntastic'

    " Vimdoc-zh
        Plug 'yianwillis/vimcdoc'

    " Emmet-vim
        Plug 'mattn/emmet-vim'

    " Taglist
        Plug 'vim-scripts/taglist.vim'

    " Giyo
        Plug 'junegunn/goyo.vim'

    " Winmanager
        Plug 'vim-scripts/winmanager'

    " Ctrlp
        Plug 'kien/ctrlp.vim'

    " Html5
        Plug 'othree/html5.vim'

    call plug#end() " Initialize plugin system

" Backup ======================
    " 用红色标记多余空白
    highlight BadWhitespace ctermbg=red guibg=red
    au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
    "正确地处理中文字符的折行和拼接
    set formatoptions+=mM
    "记录上次关闭的文件及状态
    set viminfo='10,\"100,:20,%,n$VIMRUNTIME/_viminfo
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    set diffexpr=MyDiff()
        function! MyDiff()
            let opt = '-a --binary '
            if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
            if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
            let arg1 = v:fname_in
            if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
            let arg2 = v:fname_new
            if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
            let arg3 = v:fname_out
            if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
            let eq = ''
            if $VIMRUNTIME =~ ' '
                if &sh =~ '\<cmd'
                    let cmd = '""' . $VIMRUNTIME . '\diff"'
                    let eq = '"'
                else
                    let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
                endif
            else
                let cmd = $VIMRUNTIME . '\diff'
            endif
            silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
        endfunction

    "使用TAB键自动完成
        function! InsertTabWrapper()
            let col=col('.')-1
            if !col || getline('.')[col-1] !~ '\k'
                return "\<TAB>"
            else
                return "\<C-N>"
            endif
        endfunction
        inoremap <TAB> <C-R>=InsertTabWrapper()<CR>

    "平台判断
        function! GetSystem()
            if (has("win32") || has("win95") || has("win64") || has("win16"))
                return "windows"
            elseif has("unix")
                return "linux"
            elseif has("mac")
                return "mac"
            endif
        endfunction

    "取得光标处的匹配
        function! GetPatternAtCursor(pat)
            let col = col('.') - 1
            let line = getline('.')
            let ebeg = -1
            let cont = match(line, a:pat, 0)
            while (ebeg >= 0 || (0 <= cont) && (cont <= col))
                let contn = matchend(line, a:pat, cont)
                if (cont <= col) && (col < contn)
                    let ebeg = match(line, a:pat, cont)
                    let elen = contn - ebeg
                    break
                else
                    let cont = match(line, a:pat, contn)
                endif
            endwh
            if ebeg >= 0
                return strpart(line, ebeg, elen)
            else
                return ""
            endif
        endfunction

    "打开链接
        function! OpenUrl()
            let s:url = GetPatternAtCursor('\v(https?://|ftp://|file:/{3}|www\.)((\w|-)+\.)+(\w|-)+(:\d+)?(/(\w|[~@#$%^&+=/.?-])+)?')
            "echo s:url
            if s:url == ""
                echohl WarningMsg
                echomsg '在光标处未发现URL！'
                echohl None
            else
                if GetSystem() == "windows"
                    call system("explorer " . s:url)
                else
                    call system("firefox " . s:url . " &")
                endif
            endif
            unlet s:url
        endfunction
        nmap <C-LeftMouse> :call OpenUrl()<CR>

    "能够漂亮的显示.NFO文件
        function! SetFileEncodings(encodings)
            let b:myfileencodingsbak=&fileencodings
            let &fileencodings=a:encodings
        endfunction
        function! RestoreFileEncodings()
            let &fileencodings=b:myfileencodingsbak
            unlet b:myfileencodingsbak
        endfunction
        au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single
        au BufReadPost *.nfo call RestoreFileEncodings()

    "F2处理行尾的空格以及文件尾部的多余空行
        autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
        "Remove indenting on empty line
        map <F2> :w<CR>:call CleanupBuffer(1)<CR>:noh<CR>
        function! CleanupBuffer(keep)
            " Skip binary files
            if (&bin > 0)
                return
            endif
            " Remove spaces and tabs from end of every line, if possible
            silent! %s/\s\+$//ge
            " Save current line number
            let lnum = line(".")
            " number of last line
            let lastline = line("$")
            let n        = lastline
            " while loop
            while (1)
                " content of last line
                let line = getline(n)
                " remove spaces and tab
                if (!empty(line))
                    break
                endif
                let n = n - 1
            endwhile
            " Delete all empty lines at the end of file
            let start = n+1+a:keep
            if (start < lastline)
                execute n+1+a:keep . "," . lastline . "d"
            endif
            " after clean spaces and tabs, jump back
            exec "normal " . lnum . "G"
        endfunction

    "快速查找（插件grep插件，需要grep软件）
        nnoremap <silent> <F3> :Grep<CR>
        "给n映射一个快捷键，习惯上喜欢用F3
        nmap <F3> n
        "给n映射一个快捷键，习惯上喜欢用F3
        nmap <S-F3> N

    "F6打开或关闭nerd_tree和taglist
    "由于nerd_tree和taglist采用了trinity插件打开
    "所以具体的设置以trinity.vim为准
    nmap <F6>  :TrinityToggleTagListAndNERDTree<CR>

    "F7单独切换打开nerd_tree（nerd_tree插件）
    let g:NERDChristmasTree = 1              "色彩显示
    let g:NERDTreeShowHidden = 1             "显示隐藏文件
    let g:NERDTreeWinPos = 'left'            "窗口显示位置
    let g:NERDTreeHighlightCursorline = 0    "高亮当前行
    nmap <F7>  :TrinityToggleNERDTree<CR>

    "netrw设置（自带目录树插件）
    let g:netrw_winsize=30
    let g:netrw_liststyle=1
    let g:netrw_timefmt='%Y-%m-%d %H:%M:%S'
    nmap <silent> <C-F7> :Sexplore!<cr>

    "F8单独切换打开taglist（taglist插件）
    if GetSystem() == "windows" "Win中ctags位置
        let g:Tlist_Ctags_Cmd = $VIMRUNTIME.'\ctags'
    else
        let g:Tlist_Ctags_Cmd = '/data/data/io.neoterm/files/usr/bin/ctags'
    endif
    "let g:Tlist_Sort_Type = 'name'          "以名称顺序排序，默认以位置顺序(order)
    let g:Tlist_Show_One_File = 1           "只显示当前文件的tag
let g:Tlist_Exit_OnlyWindow = 1 "taglist是最后窗口则退出
    lef g:Tlist_File_Fold_Auto_Close = 1 "光标不在时全部折叠
    let g:Tlist_Use_Right_Window = 1        "右侧显示taglist
    let g:Tlist_Enable_Fold_Column = 1      "显示折叠边栏
    nmap <F8>  :TrinityToggleTagList<CR>

    "F11查看打开的文件列表（bufexplorer插件）
    let g:bufExplorerDefaultHelp = 1
    let g:bufExplorerDetailedHelp = 0
    nmap <F11> :BufExplorer <CR>

    "F12生成/更新tags文件
    set tags=tags;
    set autochdir
    function! UpdateTagsFile()
        silent !ctags -R --fields=+ianS --extra=+q
    endfunction
    nmap <F12> :call UpdateTagsFile()<CR>

    "Ctrl + F12删除tags文件
    function! DeleteTagsFile()
        "Linux下的删除方法
        "silent !rm tags
        "Windows下的删除方法
        silent !del /F /Q tags
    endfunction
    nmap <C-F12> :call DeleteTagsFile()<CR>
    "退出VIM之前删除tags文件
    au VimLeavePre * call DeleteTagsFile()

