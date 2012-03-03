" Mapping to have j+k (i.ew., at the same time) meaning <Esc> (i.e., leave the insert mode)
call arpeggio#load()
" To quickly exit the insert of visual mode, type j+l
Arpeggioimap jl <Esc>
Arpeggiovmap jl <Esc>
" To allow motions in insert mode (not really convenient)
Arpeggioimap ,a <C-o><S-a>
Arpeggioimap ,i <C-o><S-i>
Arpeggioimap ,e <C-o>e
Arpeggioimap ,w <C-o>w
Arpeggioimap ,b <C-o>b
Arpeggioimap qj <C-o>j
Arpeggioimap qk <C-o>k
Arpeggioimap qh <C-o>h
Arpeggioimap ql <C-o>l
Arpeggioimap ,s <Esc>:w<CR>
" same thing with simply hold Alt key (does not work)
" inoremap <A-H> <C-o>h
" inoremap <A-j> <C-o>j
" inoremap <A-k> <C-o>k
" inoremap <A-l> <C-o>l
" inoremap <A-e> <C-o>e
" inoremap <A-w> <C-o>w
" inoremap <A-b> <C-o>b
" To comment a line quickly in insert mode (use shortcuts of tcomment plugin)
Arpeggioimap ja <Esc>gcc
Arpeggionmap ja gcc
Arpeggiovmap ja gc
