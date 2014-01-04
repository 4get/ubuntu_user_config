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
set fileformats=unix,dos

map <F2> :e ++ff=dos<CR>
map <F3> :set mouse=a<CR>
map <F4> :set mouse=<CR>
map <F5> :invnumber<CR>
map <F7> :TlistToggle<CR>
"map <F8> [I

map <F8> dd :w<CR> :b2<CR><ESC>p<ESC>:w<CR><ESC>:b1<CR>
map <F11> /<C-R>=expand("<cword>")<CR><CR>:b3<CR>n
"nmap <F9> :call Mydict2()<CR> <C-W>w b
nmap <F10> :call Mydict1()<CR> <C-W>w b
"map <F11> :call Myword()<CR><C-W>w /<C-R>=expand("<cword>")<CR><CR>N
map <F12> <ESC>^i*<ESC>ww

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

function! Myword()
  let expl=system('grep -rin -m 20 ' .
        \  expand("<cword>") .
        \  ' grep/*' 
        \  )
  windo if  
        \ expand("%")=="diCt-tmp" |  
        \ q!|endif  
  bel 30sp diCt-tmp  
  setlocal buftype=nofile bufhidden=hide noswapfile  
  s/^/\=expl/  
  :0
endfunction  

function! Mydict1()  
  let expl=system('sdcv -n -u Oxford ' . 
        \  expand("<cword>"))  
  windo if  
        \ expand("%")=="diCt-tmp" |  
        \ q!|endif  
  bel 30sp diCt-tmp  
  setlocal buftype=nofile bufhidden=hide noswapfile  
  1s/^/\=expl/  
  :set syntax=vhdl
  1  
endfunction  

function! Mydict2()  
  let expl=system('sdcv -n -u Longman ' .  
        \  expand("<cword>"))  
  windo if  
        \ expand("%")=="diCt-tmp" |  
        \ q!|endif  
  bel 30sp diCt-tmp  
  setlocal buftype=nofile bufhidden=hide noswapfile  
  1s/^/\=expl/  
  ":%s/\/\//\r/
  :%s/\/\//\r/g
  :set syntax=vhdl
  1  
endfunction  




"	\ 'auto_export': 1,

if MySys()=="unix"
	"colorscheme ron
	colorscheme darkblue
	set fileencodings=utf-8,gb2312,gbk,gb18030
	set termencoding=utf-8
	"set fileformats=unix
	set encoding=utf-8
	
	let g:vimwiki_list = [{'path': '/workspace/wiki/',
		\ 'path_html': '/var/www/',
		\ 'template_path': '/workspace/wiki/.template/',
		\ 'template_default': 'united',
		\ 'index': 'index',
		\ 'ext': '.txt',
		\ 'syntax': 'markdown',
		\ 'nested_syntaxes': {'python': 'python', 'cpp': 'cpp', 'c': 'c', 'java': 'java'},
		\ 'template_ext': '.html'},
		\ {'path': '/workspace/wiki/reading'}]
	
	let g:vimwiki_valid_html_tags='pre,code'
	let g:vimwiki_camel_case = 0
	let g:vimwiki_menu = ''
	let g:vimwiki_CJK_length = 1
	let g:vimwiki_use_mouse = 1
endif

if MySys()=="win32"
	cd d:\dropbox\reading
	set fileformats=dos
	colorscheme darkblue

	let &termencoding=&encoding
	set fileencodings=utf-8
	let g:vimwiki_list = [{'path': 'd:/Dropbox/reading',
	    \ 'path_html': 'd:/wiki_html/',
	    \ 'template_path': 'd:/wiki/.template/',
	    \ 'template_default': 'united',
	    \ 'index': 'index',
	    \ 'ext': '.txt',
	    \ 'syntax': 'markdown',
	    \ 'nested_syntaxes': {'python': 'python', 'cpp': 'cpp', 'c': 'c', 'java': 'java'},
	    \ 'template_ext': '.html'},
		\ {'path': 'd:/wiki/',
	    \ 'index': 'index',
	    \ 'ext': '.md'}]

endif 

