" ~/.vim/sessions/cours2.vim: Vim session script.
" Created by session.vim 1.5 on 03 mars 2012 at 17:04:28.
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
call setqflist([{'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'auxiliary/commands.tex', 'text': ')) (/usr/share/texmf/tex/latex/beamer/base/beamerbasemisc.sty)'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'auxiliary/commands.tex', 'text': ')) (/usr/share/texmf/tex/latex/beamer/base/themes/theme/beamerthemeMadrid.sty'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'auxiliary/commands.tex', 'text': ') (/usr/share/texmf-texlive/tex/latex/aeguill/aeguill.sty'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'auxiliary/commands.tex', 'text': '(./main.out)'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'auxiliary/commands.tex', 'text': '(./main.nav)'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'auxiliary/commands.tex', 'text': '(./main.aux) )'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/FouilleDeTexte_UCBN/Cours/2012-03-07_v2
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +143 ~/.vim/xptemplate_mySnippets/ftplugin/tex/tex.xpt.vim
badd +78 main.tex
badd +262 sec_premieresContraintes.tex
badd +79 auxiliary/commands.tex
badd +65 sec_motifsEmergents.tex
silent! argdel *
set lines=55 columns=213
edit ~/.vim/xptemplate_mySnippets/ftplugin/tex/tex.xpt.vim
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 1 + 27) / 55)
exe '2resize ' . ((&lines * 51 + 27) / 55)
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
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
310
silent! normal zo
314
silent! normal zo
318
silent! normal zo
322
silent! normal zo
326
silent! normal zo
333
silent! normal zo
337
silent! normal zo
let s:l = 325 - ((54 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
325
normal! 019l
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 1 + 27) / 55)
exe '2resize ' . ((&lines * 51 + 27) / 55)
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
