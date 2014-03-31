" set tab indentations
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" enable syntax highlighting
syntax on

" set Terminal color to 256 instead of 8
"if &term =~ '^\(xterm\|screen\)$' && $COLORTERM == 'gnome-terminal'
"  set t_Co=256
"endif

" color scheme
"color ir_black

" search
se hls  " highlighting matches
se is   " as typed
se ic   " ignoring cases
se scs  " unless capital is used

" highlight current line
"se cul

" undo highlighting all matches by hitting <RETURN>
nnoremap <CR> :noh<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" blinks a line when searching for patterns
"nnoremap <silent> n n:call HLNext(0.4)<CR>
"nnoremap <silent> N N:call HLNext(0.4)<CR>

"function! HLNext (blinktime)
"    set invcursorline
"    redraw
"    exec 'sleep ' . float2nr(a:blinktime * 100) . 'm'
"    set invcursorline
"    redraw
"endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" jj leaves insert mode
inoremap jj <ESC>

" kk also leaves insert mode
inoremap kk <ESC>

" show line numbers
set number

" change line number color to grey
highlight LineNr ctermfg=darkgrey

" highlights text that goes over 85 characters
highlight ColorColumn ctermbg=darkgrey
call matchadd('ColorColumn', '\%86v', 100)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable mouse if available
"if has("mouse")
"    set mouse=a
"endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" shows tabs and trailing spaces
" TODO: this is barely visible in gvim monokai color scheme
set list
set listchars=tab:>-,trail:-

" F5 to remove all trailing white spaces
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" gvim env setup 
" TODO: set a toggle for toolbar/menu button
if has('gui_running')
    set guioptions-=T " no toolbar
    set guioptions-=m " no menu
    set guioptions-=r " no right-hand scroll bar 
    set guioptions-=L " no left-hand scroll bar 
    color monokai     " monokai.vim should be availble in .vim/colors/
    set lines=64
endif
