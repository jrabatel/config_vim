" ~/.vim/sessions/cours.vim: Vim session script.
" Created by session.vim 1.5 on 27 février 2012 at 11:15:35.
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
call setqflist([{'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'sec_generalitesFDD.tex', 'text': ')) (/usr/share/texmf/tex/latex/beamer/base/beamerbasemisc.sty)'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'sec_generalitesFDD.tex', 'text': ')) (/usr/share/texmf/tex/latex/beamer/base/themes/theme/beamerthemeWarsaw.sty'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'sec_generalitesFDD.tex', 'text': '(/usr/share/texmf-texlive/tex/latex/base/inputenc.sty'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'pattern': '', 'filename': 'main.aux', 'text': 'LaTeX Warning: Label `sec:fouilleDeTexte'' multiply defined.'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'sec_generalitesFDD.tex', 'text': '[15] (./sec_generalitesFdT.tex (./main.toc) [16])pdfTeX warning (ext4): desti'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'sec_generalitesFDD.tex', 'text': '(./main.toc) [32]'}, {'lnum': 103, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'pattern': '', 'filename': 'sec_motifsSequentielsTextes.tex', 'text': 'LaTeX Warning: Command \'' invalid in math mode on input line 103.'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'sec_generalitesFDD.tex', 'text': '(./main.aux)'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': 'W', 'pattern': '', 'filename': 'sec_generalitesFDD.tex', 'text': 'LaTeX Warning: There were multiply-defined labels.'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/FouilleDeTexte_UCBN/support/_v2
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +10 sec_motifsSequentielsTextes.tex
badd +1 ~/.vimrc
badd +211 TextMining.tex
badd +267 ~/.vim/xptemplate_mySnippets/ftplugin/tex/tex.xpt.vim
badd +198 sec_motifsSequentiels.tex
badd +66 main.tex
badd +1 sec_generalitesFDD.tex
badd +8 main.aux
badd +1488 main.log
silent! argdel *
set lines=58 columns=213
edit sec_motifsSequentielsTextes.tex
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
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
5,5fold
6,6fold
20,20fold
23,23fold
21,24fold
34,34fold
35,35fold
36,36fold
47,47fold
48,48fold
49,49fold
63,63fold
64,64fold
65,65fold
73,73fold
74,74fold
71,75fold
86,86fold
87,87fold
114,114fold
115,115fold
120,120fold
121,121fold
153,153fold
154,154fold
168,168fold
169,169fold
170,170fold
186,186fold
187,187fold
56,190fold
56
silent! normal zo
120
silent! normal zo
121
silent! normal zo
56
silent! normal zo
let s:l = 132 - ((0 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
132
normal! 024l
wincmd w
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
1wincmd w

" vim: ft=vim ro nowrap smc=128
