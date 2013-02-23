" FOR ECLIM
nnoremap <silent> <buffer> <leader>ji :JavaImport<cr>
nnoremap <silent> <buffer> <leader>jai :JavaImportOrganize<cr>
vnoremap <silent> <buffer> <leader>jf :JavaFormat<cr>
nnoremap <silent> <buffer> <leader>jf :%JavaFormat<cr>
nnoremap <silent> <buffer> <leader>jd :JavaDocSearch -x declarations<cr>
nnoremap <silent> <buffer> <leader>jc :JavaDocComment<cr>
nnoremap <silent> <buffer> <leader>jr :Java %<cr>
nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>

set guioptions-=m " turn off menu bar
set guioptions-=T " turn off toolbar
