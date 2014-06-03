filetype off
"""call pathogen#runtime_append_all_bundles()
call pathogen#incubate()
call pathogen#helptags()
let g:atp_Python = "/usr/bin/python2"
""" Miscellaneous settings

"====[ Make the 81st column stand out ]====================
highlight ColorColumn ctermbg=cyan
set colorcolumn=81


"=====[ Highlight matches when jumping to next ]=============
nnoremap <silent> n n:call HLNext(0.4)<cr>
nnoremap <silent> N N:call HLNext(0.4)<cr>

"=====[ Blink the matching line ]=============
function! HLNext (blinktime)
    set invcursorline
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    set invcursorline
    redraw
endfunction



set modeline
set number
syntax on
set linebreak

""" set background=dark
""" colorscheme solarized

""" Hybrid colour scheme - tomorrow night + jelly bean + solarized
let g:hybrid_use_Xresources = 1 """ I assume this is for gvim
colorscheme hybrid

""" Tabs and indentation
set tabstop=8
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set foldmethod=indent
set foldlevel=99

""" gVim options
set guioptions-=T "remove toolbar
set guioptions-=m "remove menu
set guioptions-=r "remove right scrollbar
set guifont=Terminus\ 9


""" Press F10 to toggle highlighting on/off, and show current value.
nnoremap <F10> :set hlsearch! hlsearch?<CR> 

set ruler
set showcmd

""" Enable mouse support in vim (not gVim)
set mouse=a

filetype indent on
filetype plugin on
let g:atp_tab_map=1
map <F9> \l

""" PYTHON STUFF
autocmd BufRead *.py nmap <F9> :w <CR> :!clear && python2 %<CR>
autocmd BufRead *.py set tabstop=4
autocmd BufRead *.py set nowrap
autocmd BufRead *.py set go+=b
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

""" Rope plugin
let ropevim_vim_completion=1
let ropevim_extended_complete=1
""" let g:pymode = 1

""" Set smart searching
set incsearch   ""Lookahead as search pattern is specified
set ignorecase  ""Ignore case in all searches...
set smartcase   ""...unless uppercase letters used
set hlsearch    ""Highlight all matches


""" Bind to F4
nnoremap <F7> :setlocal spell! spelllang=en_gb<CR>


""" Split handling
nnoremap <C-N> <C-W><C-J>
nnoremap <C-E> <C-W><C-K>
nnoremap <C-I> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright


""" Nerd Tree
" Automatically close vim if nerdTree is the only remaining window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"Map <F8> to open nerdTree
map <F8> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
