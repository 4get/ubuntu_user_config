set nobackup
set tabstop=4
set cindent shiftwidth=4
set hlsearch
set showmode
set ruler
set backspace=indent,eol,start
set nocompatible
filetype plugin on
syntax on
set showcmd
"set nu
set tw=0
"set incsearch	
"set fileformats=unix,dos

map <F2> :e ++ff=dos<CR>
map <F3> :set mouse=a<CR>
map <F4> :set mouse=<CR>
map <F5> :invnumber<CR>
map <F7> :TlistToggle<CR>
map <F8> [I
map <F9> :VimwikiAll2HTML<CR>

" Detect the system
function! MySys()
    if has("win32")
return "win32"
    elseif has("unix")
        return "unix"
    else
return "mac"
    endif
endfunction

let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_File_Fold_Auto_Close=1
"let Tlist_WinWidth=50



"	\ 'auto_export': 1,

if MySys()=="unix"
	colorscheme desert
	set fileencodings=utf-8,gb2312,gbk,gb18030
	set termencoding=utf-8
	set encoding=utf-8
	
	let g:vimwiki_list = [{'path': '/workspace/wiki/',
		\ 'path_html': '/var/www/',
		\ 'template_path': '/workspace/wiki/.template/',
		\ 'template_default': 'united',
		\ 'index': 'index',
		\ 'ext': '.md',
		\ 'syntax': 'markdown',
		\ 'nested_syntaxes': {'python': 'python', 'cpp': 'cpp', 'c': 'c', 'java': 'java'},
		\ 'template_ext': '.html'},
		\ {'path': '/workspace/wiki/h1'},
		\ {'path': '/workspace/wiki/android'},
		\ {'path': '/workspace/wiki/reading'}
		\ ]
	
	let g:vimwiki_valid_html_tags='pre,code'
	let g:vimwiki_camel_case = 0
	let g:vimwiki_menu = ''
	let g:vimwiki_CJK_length = 1
	let g:vimwiki_use_mouse = 1
endif

if MySys()=="win32"
	colorscheme darkblue

	let &termencoding=&encoding
	set fileencodings=utf-8,gbk,ucs-bom,cp936
	let g:vimwiki_list = [{'path': 'd:/wiki/',
	    \ 'path_html': 'd:/wiki_html/',
	    \ 'template_path': 'd:/wiki/.template/',
	    \ 'template_default': 'united',
	    \ 'index': 'index',
	    \ 'ext': '.md',
	    \ 'syntax': 'markdown',
	    \ 'auto_export': 1,
	    \ 'nested_syntaxes': {'python': 'python', 'cpp': 'cpp', 'c': 'c', 'java': 'java'},
	    \ 'template_ext': '.html'}]
endif 

