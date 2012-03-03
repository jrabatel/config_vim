" ~/.vim/sessions/default.vim: Vim session script.
" Created by session.vim 1.5 on 24 février 2012 at 22:19:03.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLtT
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'light'
	set background=light
endif
if !exists('g:colors_name') || g:colors_name != 'skittles_berry' | colorscheme skittles_berry | endif
call setqflist([{'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '.dropbox-folder/Dropbox/Documents/Profesional/PostDoc/FouilleDeTexte_UCBN/support/cours1.tex', 'text': '(./document.aux)'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '.dropbox-folder/Dropbox/Documents/Profesional/PostDoc/FouilleDeTexte_UCBN/support/cours1.tex', 'text': ''}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/FouilleDeTexte_UCBN/support
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +119 ~/.vimrc
badd +10 ~/.vim/bundle/vim-latex/ftplugin/tex.vim
badd +111 ~/.vim/xptemplate_mySnippets/ftplugin/tex/tex.xpt.vim
badd +7 _v2/TextMining.tex
badd +23 ~/.vim/bundle/xptemplate/doc/xptemplate.txt
badd +1 _v1/cours1.tex
silent! argdel *
set lines=58 columns=213
edit _v1/cours1.tex
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 1 + 29) / 58)
exe '2resize ' . ((&lines * 54 + 29) / 58)
argglobal
enew
file -MiniBufExplorer-
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1,28fold
50,50fold
51,51fold
48,52fold
57,57fold
58,58fold
55,59fold
60,60fold
53,61fold
62,62fold
71,71fold
72,72fold
73,73fold
74,74fold
75,75fold
76,76fold
83,83fold
84,84fold
85,85fold
86,86fold
87,87fold
119,119fold
120,120fold
121,121fold
122,122fold
132,132fold
133,133fold
136,136fold
137,137fold
130,138fold
154,154fold
155,155fold
156,156fold
171,171fold
172,172fold
173,173fold
190,190fold
191,191fold
192,192fold
193,193fold
194,194fold
42,200fold
207,207fold
208,208fold
209,209fold
210,210fold
211,211fold
221,221fold
222,222fold
223,223fold
216,227fold
234,234fold
235,235fold
228,239fold
240,244fold
201,244fold
250,250fold
251,251fold
256,258fold
245,258fold
let s:l = 1 - ((0 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 1 + 29) / 58)
exe '2resize ' . ((&lines * 54 + 29) / 58)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
2wincmd w

" vim: ft=vim ro nowrap smc=128
