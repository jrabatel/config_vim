" VERY GENERAL OPTIONS
set nocompatible
set hidden
syntax on
set number
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set mouse=a
set showmatch  " montre les correspondance entre les paranthèses ouvrantes et fermantes
set ignorecase " ignore case in search
set smartcase  " case-sensitive only if there is a capital letter
set hlsearch
set incsearch
filetype on
set history=1000
set nocp
set cursorline
" set cursorcolumn
set wildmenu
set wildmode=list:longest

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs

set tabstop=4
set shiftwidth=4
set expandtab

" FOLDING
set foldmethod=syntax
nnoremap zz zR

" GRAPHICAL OPTIONS
colorscheme skittles_berry
set t_Co=256

" Mapping to open vimrc config file
nmap ,vim :edit ~/.vimrc<CR>

" MAKE
nnoremap ,mak :silent make -C $build/jak2/src/examples/crossValidation<CR>:redraw!<CR>

" Change the place where swap files are stored
set backupdir=~/.vim/_tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim/_tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Scroll the viewport faster
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
set scrolloff=3

" Bubbling text
" " Bubble multiple lines
vmap <Up> xkP`[V`]
vmap <Down> xp`[V`]

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

nnoremap <silent> <F8> :TagbarToggle<CR>
let g:tagbarautoclose = 0

nmap <silent> <C-F11> :NERDTreeToggle<CR>
nmap <silent> ,nn :NERDTreeToggle<CR>
nmap <silent> ,nb :NERDTreeToggle<CR><S-b><CR>
let mapleader=","

" map <C-F9> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

nnoremap ' `
nnoremap ` '
nnoremap ù %
vnoremap ù %
nnoremap à 0
vnoremap à 0
nnoremap é ~
vnoremap é ~

" Marks
nnoremap '' `.

" Quickfix window
nnoremap ,Q :cw<CR>
nnoremap ,q :ccl<CR>
nnoremap ,s :cprev<CR>
nnoremap ,d :cnext<CR>

" Find methods and maps
" find in the project (current directory) the matches of the word under the cursor (and show the list)
nmap ,Fw :silent grep! -R <cword> *<CR>:redraw!<CR>
nmap ,FFw :silent grep! -R <cword> %:p:h/*<CR>:redraw!<CR>
nmap ,FW :silent grep! -w -R <cword> *<CR>:redraw!<CR>
nmap ,FFW :silent grep! -w -R <cword> %:p:h/*<CR>:redraw!<CR>

" find the commented lines (for // comments)
nmap ,Fl /\/\//<CR>
" find the calls to a function
nmap ,Fc :silent grep! -R [^[:alnum:]_]<cword>[[:space:]]*\( *<CR>:redraw!<CR>

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

"""""""""""""""""""""""""""""""""""""""""
" Manipulating windows, tabs and buffers
" Buffers
noremap ,bd :bd<CR>
noremap ,rr :e<CR>

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

" change operator
nmap cs ct.

" space-indenting lines
imap ,;<space> <ESC><S-I><space><space><S-A>
nmap ,<space> <S-I><space><space><ESC>

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

" Quickly find code markers in a project (should be modified to use vimgrep)
nmap ,add :grep -l -r '\*\*ADDED' **/*

" FOR FuzzyFinder:
" nnoremap <silent> <C-f>b      :FufBuffer<CR>
" nnoremap <silent> <C-p>      :FufFileWithCurrentBufferDir<CR>
" nnoremap <silent> <C-f><C-p> :FufFileWithFullCwd<CR>
" nnoremap <silent> <C-f>p     :FufFile<CR>
" nnoremap <silent> <C-f><C-d> :FufDirWithCurrentBufferDir<CR>
" nnoremap <silent> <C-f>d     :FufDirWithFullCwd<CR>
" nnoremap <silent> <C-f>D     :FufDir<CR>
" nnoremap <silent> <C-f>mf    :FufMruFile<CR>
" nnoremap <silent> <C-k>      :FufMruCmd<CR>
" nnoremap <silent> <C-b>      :FufBookmarkDir<CR>
" nnoremap <silent> <C-f><C-t> :FufTag<CR>
" nnoremap <silent> <C-f>t     :FufTag!<CR>
" noremap  <silent> g]         :FufTagWithCursorWord!<CR>
" nnoremap <silent> <C-f><C-f> :FufTaggedFile<CR>
" nnoremap <silent> <C-f><C-j> :FufJumpList<CR>
" nnoremap <silent> <C-f><C-g> :FufChangeList<CR>
" nnoremap <silent> <C-f><C-q> :FufQuickfix<CR>
" nnoremap <silent> <C-f><C-l> :FufLine<CR>
" nnoremap <silent> <C-f><C-h> :FufHelp<CR>
" nnoremap <silent> <C-f><C-b> :FufAddBookmark<CR>
" vnoremap <silent> <C-f><C-b> :FufAddBookmarkAsSelectedText<CR>
" nnoremap <silent> <C-f><C-e> :FufEditInfo<CR>
" nnoremap <silent> <C-f><C-r> :FufRenewCache<CR>

" FOR CtrlP
let g:ctrlp_map = '<c-f>'

"FOR COMMAND-T
" nnoremap <silent> <C-f>f     :CommandT<CR>
" nnoremap <silent> <C-f>b     :CommandTBuffer<CR>
" nnoremap <silent> <C-f>t     :CommandTTag<CR>
" nnoremap <silent> <C-f>j     :CommandTJump<CR>

" FOR ConqueTerm:
nnoremap <silent> ,ob      :ConqueTerm bash<CR>
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_InsertOnEnter = 0
let g:ConqueTerm_StartMessages = 0

" FOR a.vim
let g:alternateExtensions_hxx = "hpp"
let g:alternateExtensions_hpp = "hxx"
nmap ,aa :A<CR>
nmap ,as :AS<CR>
nmap ,av :AV<CR>
nmap ,an :AN<CR>

" FOR TABULAR
" for aligning the last column in lines of code
nmap ,alc :Tab /\s\S\+;<CR>
vmap ,alc :Tab /\s\S\+;<CR>

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOR XPTEMPLATE
" Set personal snippet folder location:
let g:xptemplate_snippet_folders=['$HOME/.vim/xptemplate_mySnippets']
"
" Automatic closing of quotes and braces:
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
let g:xptemplate_nav_next = '<C-k>'
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
let g:xptemplate_vars="$email=julien.rabatel@cs.kuleuven.be"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOR MINIBUFEXPL
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1

" FOR CLANG_COMPLETE
let g:clang_auto_select         = 1
let g:clang_use_library         = 0
let g:clang_complete_copen      = 0
" let g:clang_periodic_quickfix = 1
let g:clang_snippets            = 1
let g:clang_snippets            = "clang_complete"
let g:clang_user_options        = "-w"
let g:clang_complete_macros     = 1
" nmap <leader>CLu g:ClangUpdateQuickFix()

let g:session_autoload = 'no'
