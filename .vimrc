" VERY GENERAL OPTIONS
set nocompatible
set hidden
syntax on
set number
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set mouse=a
set showmatch    " montre les correspondance entre les paranthèses ouvrantes et fermantes
set ignorecase    " ignore case in search
set smartcase	" case-sensitive only if there is a capital letter
filetype on
set history=1000
set nocp
set hlsearch
set cursorline
"set cursorcolumn
set wildmenu
set wildmode=list:longest

" GRAPHICAL OPTIONS
colorscheme skittles_berry
set t_Co=256

" Change the place where swap files are stored
set backupdir=~/.vim/_tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim/_tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
set scrolloff=3

set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" For some plugins to work (e.g., RecentFiles)
set viminfo+=!

" """"""""""""""""""""""""""""""""""""""""""
" MAPPINGS
"
" Mappings to insert empty lines in normal mode (respectively below and above
" the cursor)
nmap ,o o<Esc>k
nmap ,O O<Esc>j

" Search for the selected text in Google or Wikipedia
vmap ,g :<C-U>!firefox "http://www.google.fr/search?hl=fr&q=<cword>&btnG=Recherche+Google&meta=" &gt;& /dev/null<CR><CR>
vmap ,w :<C-U>!firefox "http://fr.wikipedia.org/wiki/<cword>" >& /dev/null<CR><CR>

 "Mapping for xptemplate autocompletion
 ""imap <C-m> <C-\><CR>
 "

 "Mapping for xptemplate autocompletion
"imap <C-m> <C-\><CR>
"
" Mapping to enable/disable the spelling
nmap ,,s :set spell<CR>
nmap ,,S :set nospell<CR>
nmap ,<C-f> :setlocal spell spelllang=fr<CR>
nmap ,<C-e> :setlocal spell spelllang=en<CR>

nnoremap <silent> <C-F8> :TagbarToggle<CR>
let gtagbarautoclose = 0

nmap <silent> <c-n> :NERDTreeToggle<CR>
nmap <silent> ,nn :NERDTreeToggle<CR>
nmap <silent> ,nb :NERDTreeToggle<CR><S-b><CR>
let mapleader=","

" map <C-F9> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

nnoremap ' `
nnoremap ` '
nnoremap ù %
nnoremap à 0

" PATHOGEN
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" Quickly quit vim
nmap ,;qq :qall!<CR>
nmap ,;wq :wq<CR>
" This map allows to exit the insert or visual or command mode quickly, without typing
" <Esc>.
imap ,; <Esc>
imap ,;w <Esc>:w<CR>
nmap ,;w :w<CR>
vmap ,; <Esc>
cmap ,; <Esc> 
" exit insert mode and undo last change
imap ,: <Esc>u
" allows motions in insert mode 
inoremap <h <C-o>h
inoremap <j <C-o>j
inoremap <k <C-o>k
inoremap <l <C-o>l
inoremap ,e <C-o>e
inoremap ,w <C-o>w
inoremap ,b <C-o>b
inoremap ,a <C-o>0
inoremap ,p <C-o>$
" allows quick commenting of a line or a selected block
imap ,c <Esc>gcc
vmap ,c gc
nmap ,c gcc
" allows quick indenting of a ling or a selected bloc (does not work
" correctly)
imap ,;= <Esc>==   
" allows quick motions between tabs (in minibufexpl)
nmap ,l :bn<CR>
nmap ,k :bp<CR>
" allows removing the highlighted matchings
nmap ,noh :nohls<CR>
" allows redrawing the screen
nmap ,red :redraw!<CR>

" manipulating windows
nmap ,wc <C-w>c

" Smart indent when entering insert mode with i on empty lines
function! IndentWithI()
	if len(getline('.')) == 0
		return "\"_ddO"
	else

	  return "i"
	endif
endfunction
nnoremap <expr> i IndentWithI()



" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGING SPECIFIC OPTIONS
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOR VIM LATEX:
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'


" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOR XPTEMPLATE
" Set personal snippet folder location:
let g:xptemplate_snippet_folders=['$HOME/.vim/xptemplate_mySnippets']
"
" Turn off automatic closing of quotes and braces:
let g:xptemplate_brace_complete = 0
" "
" Snippet triggering key:
let g:xptemplate_key = '<C-k>'
" "
" " open the pop-up menu:
" let g:xptemplate_key_pum_only = '<Leader><Tab>'
" "
" " Clear current placeholder and jump to the next:
" imap <C-d> <Tab>
let g:xptemplate_nav_cancel = '<C-d>'
" "
" " Move to the next placeholder in a snippet:
let g:xptemplate_nav_next = '<Tab>'
" "
" " Go to the end of the current placeholder and in to insert mode:
" " <C-_> is actually CONTROL-/ on my keyboard.
let g:xptemplate_to_right = '<C-_>'
" "
" " Move cursor back to last placeholder:
" let g:xptemplate_goback = '<C-g>'
" "
" Use TAB/S-TAB to navigate through the pop-up menu:
let g:xptemplate_pum_tab_nav = 1
" "
" " Reload xptemplate snippets without quitting vim.
nmap ,xpt :XPTreload<CR>

let g:xptemplate_vars="$author=Julien Rabatel"
let g:xptemplate_vars="$email=julien.rabatel@unicaen.fr"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOR MINIBUFEXPL
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1 


let g:session_autoload = 'no'
