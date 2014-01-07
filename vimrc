" set tab indentations
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" set Terminal color to 256 instead of 8
if &term =~ '^\(xterm\|screen\)$' && $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" color scheme
color molokai

" highlights all matches
set hlsearch

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

" show line numbers
set number

" case insensitive search
set ic

" display the match for search pattern on the fly
set incsearch

" change line number color to grey
"highlight LineNr ctermfg=darkgrey

" highlights text that goes over 80 characters
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)

