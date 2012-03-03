" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" In order to type the 'é' character
imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine
" In order to type the 'â' character
imap <buffer> <leader>mathbf <Plug>Tex_MathBF

" When in latex file, we use taglist instead of tagbar
let Tlist_Use_Right_Window=1
nnoremap <silent> <C-F8> :TlistToggle<CR>
