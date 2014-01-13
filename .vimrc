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
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%86v', 100)

" enable mouse if available
if has("mouse")
    set mouse=a
endif

" shows tabs and trailing spaces
set list
set listchars=tab:>-,trail:-
