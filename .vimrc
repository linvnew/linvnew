"""""""""""""""""""""""""""""""""""""
" vim-plug
"""""""""""""""""""""""""""""""""""""
call plug#begin()
    " Make sure you use single quotes
    
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

    Plug 'vim-airline/vim-airline-themes'
    	let g:airline_theme='cool'

"   Plug 'altercation/vim-colors-solarized'
	syntax enable
 	set background=light
"	colorscheme solarized
	let g:solarized_termcolors=256
 	call togglebg#map("<F5>")

    Plug 'yianwillis/vimcdoc'

"    " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"    Plug 'junegunn/vim-easy-align'
"    
"    " Any valid git URL is allowed
"    Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"    
"    " Multiple Plug commands can be written in a single line using | separators
"    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"    
"    " On-demand loading
"    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"    Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"    
"    " Using a non-master branch
"    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"    
"    " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"    Plug 'fatih/vim-go', { 'tag': '*' }
"    
"    " Plugin options
"    Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"    
"    " Plugin outside ~/.vim/plugged with post-update hook
"    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"    
"    " Unmanaged plugin (manually installed and updated)
"    Plug '~/my-prototype-plugin'
"    
"    " Initialize plugin system
call plug#end()

