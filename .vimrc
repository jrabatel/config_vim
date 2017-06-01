" SET UP VUNDLE
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" GUI
Plugin 'mru.vim'
Plugin 'valloric/youcompleteme'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'duggiefresh/vim-easydir'
Plugin 'easymotion/vim-easymotion'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'henrik/vim-indexed-search' " Show Match 123 of 456 /search term/ in searches
Plugin 'vim-scripts/Conque-Shell'
Plugin 'majutsushi/tagbar'
Plugin 'TagHighlight'
Plugin 'TailMinusF'
Plugin 'joonty/vdebug'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'idanarye/vim-merginal'
Plugin 'airblade/vim-gitgutter'
Plugin 'cohama/agit.vim'
Plugin 'laurentgoudet/vim-howdoi'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-vinegar'
Plugin 'YankRing.vim'
Plugin 'bling/vim-airline'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" EDITOR
Plugin 'luochen1990/rainbow'
Plugin 'matchit.zip'
Plugin 'godlygeek/tabular'
Plugin 'haya14busa/incsearch.vim'
Plugin 'andrewradev/splitjoin.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'mjbrownie/swapit'
Plugin 'scrooloose/syntastic'
Plugin 'myint/syntastic-extras'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-eunuch'
Plugin 'terryma/vim-expand-region'
Plugin 'vimwiki/vimwiki'
Plugin 'gcmt/wildfire.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-repeat'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'derekwyatt/vim-fswitch'

" LANGUAGE / FRAMEWORK
Plugin 'Rip-Rip/clang_complete'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'nginx.vim'
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'
Plugin 'lucapette/vim-ruby-doc'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-bundler'
Plugin 'leafgarland/typescript-vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ap/vim-css-color'
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-jdaddy'
Plugin 'vim-latex/vim-latex'
Plugin 'tpope/vim-markdown'
" Plugin 'stephpy/vim-yaml'

" UTILS
Plugin 'genutils'
Plugin 'libList.vim'
Plugin 'L9'

call vundle#end()
filetype plugin indent on
" END OF VUNDLE SETUP

" VERY GENERAL OPTIONS
set nocompatible
set hidden
syntax on
set number
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set mouse=a
" set showmatch  " montre les correspondance entre les paranthèses ouvrantes et fermantes
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
set textwidth=0

" FOLDING
set foldmethod=manual
nnoremap zz zR

" GRAPHICAL OPTIONS
syntax enable
set background=dark
set t_ut=
set t_Co=256
"let g:solarized_termcolors=16
" let g:solarized_termcolors=256
colorscheme skittles_berry
"colorscheme solarized

" Mapping to open vimrc config file
nmap ,vim :edit ~/.vimrc<CR>
" Mapping to open wikifiles
nmap ,wsit :edit ~/vimwiki/webdev/ListOfWebsites.wiki<CR>
nmap ,wjdr :edit ~/vimwiki/ld/JDR.wiki<CR>
nmap ,web :edit ~/vimwiki/webdev.wiki<CR>

" MAKE
" nnoremap ,makj :silent make -C $build/jak2/src/examples/decisionForest/<CR>:redraw!<CR>
" nnoremap ,makj :silent make -C $build/jak2/src/examples/crossValidation/<CR>:redraw!<CR>
" nnoremap ,makj :silent make -C $build/jak2/src/examples/mutaData/<CR>:redraw!<CR>
nnoremap ,makj :silent make -C /home/personnels/rabatel/Documents/Code/build/jak2/src/examples/mutaData/<CR>:redraw!<CR>
" nnoremap ,makj :silent make -C /home/personnels/rabatel/Documents/Code/build/jak2/src/examples/virtualScreeningDUD/<CR>:redraw!<CR>
" nnoremap ,makj :silent make -C $build/jak2/src/examples/mutaDataRandomForest/<CR>:redraw!<CR>
" nnoremap ,makbj :silent make -B -C /home/personnels/rabatel/Documents/Code/build/jak2/src/examples/crossValidation/<CR>:redraw!<CR>
nnoremap ,mako :silent make -C /home/personnels/rabatel/Documents/Code/build/openbabel_preprocessing/src<CR>:redraw!<CR>
nnoremap ,makbo :silent make -B -C $build/openbabel_preprocessing/src<CR>:redraw!<CR>
nnoremap ,maks :silent make -C $build/stimulation_classification/src<CR>:redraw!<CR>
nnoremap ,makg :silent make -C Release<CR>:redraw!<CR>

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

"explorer mappings
nnoremap <f1> :BufExplorer<cr>
nnoremap <f2> :NERDTreeToggle<cr>
nnoremap <f3> :TagbarToggle<cr>

" Mappings to insert empty lines in normal mode (respectively below and above
" the cursor)
nmap ,o o<Esc>k
nmap ,O O<Esc>j

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

" Search for the selected text in Google or Wikipedia
" vmap ,g :<C-U>!firefox "http://www.google.fr/search?hl=fr&q=<cword>&btnG=Recherche+Google&meta=" &gt;& /dev/null<CR><CR>
" vmap ,w :<C-U>!firefox "http://fr.wikipedia.org/wiki/<cword>" >& /dev/null<CR><CR>

 "Mapping for xptemplate autocompletion
 ""imap <C-m> <C-\><CR>
 "

 "Mapping for xptemplate autocompletion
"imap <C-m> <C-\><CR>
"
" Mapping to enable/disable the spelling
nmap ,,s :set spell<CR>
nmap ,,S :set nospell<CR>
nmap ,,<C-f> :setlocal spell spelllang=fr<CR>
nmap ,,<C-e> :setlocal spell spelllang=en<CR>
" automatically correct word under cursor
nmap <silent> <C-z> z=1<CR><CR>

nnoremap ,<CR> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1

" Quickly remove other buffers
nmap ,bufo :Bufonly<CR>

nmap <silent> <C-F11> :NERDTreeToggle<CR>
nmap <silent> ,nn :NERDTreeToggle<CR>
nmap <silent> ,nb :NERDTreeToggle<CR><S-b><CR>
nmap <silent> <A-n> :NERDTreeToggle<CR>
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

" Location list
nnoremap ,sl :lne<CR>


" Capitalize/uncapitalize the first character of all words on a line
nmap ,cap :s/\<[a-z]/\u&/g<CR>:nohls<CR>
nmap ,ucap :s/\<[A-Z]/\l&/g<CR>:nohls<CR>

" Find methods and maps
" find in the project (current directory) the matches of the word under the cursor (and show the list)
nmap ,Fw :silent grep! -R <cword> *<CR>:redraw!<CR>
nmap ,FFw :silent grep! -R <cword> %:p:h/*<CR>:redraw!<CR>
nmap ,FW :silent grep! -w -R <cword> *<CR>:redraw!<CR>
nmap ,FFW :silent grep! -w -R <cword> %:p:h/*<CR>:redraw!<CR>
" run a grep search in the whole source directory
nmap ,grep :silent grep -r '' **/*<Left><Left><Left><Left><Left><Left>
nmap ,agrep :silent grepa -r '' **/*<Left><Left><Left><Left><Left><Left>

" search and replace in a line or in a file
nmap ,repl :Subvert```g<Left><Left><Left>
nmap ,repa :%Subvert```g<Left><Left><Left>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" simple alignement function
vmap ,al :Tab /

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
nmap ,;qw :wq<CR>
" This map allows to exit the insert or visual or command mode quickly, without typing
" <Esc>.
imap ,; <Esc>
imap ,;w <Esc>:w<CR>
nmap ,;w :w<CR>
vmap ,; <Esc>
cmap ,; <Esc>

" same mappings for mobile keyboard
imap ,. <Esc>
imap ,.w <Esc>:w<CR>
nmap ,.w :w<CR>
vmap ,. <Esc>
cmap ,. <Esc>
" other convenient mappings for mobile keyboard
" iterate over suggestions in insert mode
imap <Up> <C-N>
imap <Down> <C-P>

" text writing mappings
imap qqch quelque chose
imap qqun quelqu'un
imap qqe quelque

"""""""""""""""""""""""""""""""""""""""""
" Manipulating windows, tabs and buffers
" Buffers
noremap ,bd :bd<CR>
noremap ,;r :e<CR>

" noremap <c-j> <c-w>j
" noremap <c-k> <c-w>k
" noremap <c-l> <c-w>l
" noremap <c-h> <c-w>h

" exit insert mode and undo last change
imap ,: <Esc>u
" allows motions in insert mode
" inoremap <h <C-o>h
" inoremap <j <C-o>j
" inoremap <k <C-o>k
" inoremap <l <C-o>l
inoremap ,e <C-o>e
inoremap ,w <C-o>w
inoremap ,b <C-o>b
inoremap ,a <C-o>0
inoremap ,p <C-o>$

" allows quick commenting of a line or a selected block
let NERDSpaceDelims=1

" allows quick indenting of a ling or a selected bloc (does not work
" correctly)
imap ,;= <Esc>==
" allows quick motions between buffers
nmap ,l :bn<CR>
nmap ,k :bp<CR>
nmap ,j :e#<CR>
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
let g:Tex_GotoError=0
let g:Tex_ShowErrorContext=0

" Compiling rules to generate pdf from dvi
" when first compiling into dvi
" let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
" let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
" let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
" let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'
" when first compiling into pdf
" let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_pdf = 'pdflatex --interaction=nonstopmode $*'

" Quickly find code markers in a project (should be modified to use vimgrep)
nmap ,add :silent grep -r '\*\*ADDED' **/*<CR>:redraw!<CR>
nmap ,todo :silent grep -r '\*\*TODO' **/*<CR>:redraw!<CR>
nmap ,note :silent grep -r '\*\*NOTE' **/*<CR>:redraw!<CR>

" FOR Show YankRing window:
nnoremap <silent> ,,c :YRShow<CR>
let g:yankring_window_use_horiz = 0  " Use vertical split
let g:yankring_min_element_length = 2 " Do not put simple characters in the yankring
let g:yankring_window_width = 50 " Size used in a vertical split

" FOR MULTIPLE-CURSORS
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-i>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<C-i>'

" FOR CtrlP
let g:ctrlp_map = '<c-f>'
let g:ctrlp_working_path_mode = 0
" FOR CtrlPFunky
let g:ctrlp_extensions = ['funky']
nnoremap <Leader><c-f> :CtrlPMRUFiles<Cr>
" narrow the list down with a word under cursor
nnoremap gd :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
" FOR CtrlPCmdPalette
nnoremap <c-c> :CtrlPCmdPalette<Cr>


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

" FOR TABULAR
" for aligning the last column in lines of code
nmap ,alc :Tab /\s\S\+;<CR>
nmap ,al= :Tab /=<CR>
nmap ,al: :Tab /:\w*<CR>
nmap ,al, :Tab /,<CR>
nmap ,al; :Tab /;<CR>

" FOR ULTISNIPS
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-n>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOR MINIBUFEXPL
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1

" FOR CLANG_COMPLETE
let g:clang_complete_auto       = 0
let g:clang_auto_select         = 1
let g:clang_use_library         = 0
" let g:clang_library_path      = ""
let g:clang_complete_copen      = 0
" let g:clang_periodic_quickfix = 1
let g:clang_snippets            = 1
let g:clang_snippets            = "clang_complete"
let g:clang_user_options        = "-w"
let g:clang_complete_macros     = 1
" nmap <leader>CLu g:ClangUpdateQuickFix()

let g:session_autoload = 'no'

" FOR VIM-EXPAND-REGION
vmap K <Plug>(expand_region_expand)
vmap J <Plug>(expand_region_shrink)

" FOR EASYMOTIONS
nmap f <leader><leader>f
nmap F <leader><leader>F
nmap t <leader><leader>t
nmap T <leader><leader>T
nmap w <leader><leader>w
nmap W <leader><leader>W
nmap b <leader><leader>b
nmap B <leader><leader>B
nmap e <leader><leader>e
nmap E <leader><leader>E

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


" FOR SPLITJOIN
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

" FOR FUGITIVE
nmap <leader>gs :Gstatus<CR>
nmap <leader>gp :Git push<cr>
nmap <leader>gu :Git pull<cr>
nmap <leader>gw :Gwrite<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gd :Gremove<CR>
" FOR AGIT
nmap <leader>gl :Agit<CR>

" FOR NerdtreePluginOpen
let g:nerdtree_plugin_open_cmd = 'xdg-open'

" FOR FSWITCH
" 1st type
nmap <leader>fs<space> :execute "b:fswitchdst=".g:fswitchdst1<CR>:let b:fswitchfnames = g:fswitchfnames1<CR>:let b:fswitchlocs = g:fswitchlocs1<CR>:FSHere<CR>
nmap <leader>fsh :FSLeft<CR>
nmap <leader>fsj :FSBelow<CR>
nmap <leader>fsk :FSAbove<CR>
nmap <leader>fsl :FSRight<CR>
" 2nd type
nmap <leader>fss<space> :FSHere<CR>
nmap <leader>fssh :FSLeft<CR>
nmap <leader>fssj :FSBelow<CR>
nmap <leader>fssk :FSAbove<CR>
nmap <leader>fssl :FSRight<CR>

" Ruby on rails
" Mappings
nmap ,rgs :!rails g scaffold 
nmap ,rc :!rails console<CR>
nmap ,rr :silent Rake<CR>
nmap ,r! :silent Rake!<CR>
nmap ,rbi :silent bundle install<CR>

" Various
imap ,jr Julien Rabatel

" FUNCTIONS
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>mv :call RenameFile()<cr>
