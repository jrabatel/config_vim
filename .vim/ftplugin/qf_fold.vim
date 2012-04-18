" Set folding in the quickfix window by files
setlocal foldlevel=0
setlocal foldmethod=expr
setlocal foldexpr=matchstr(getline(v:lnum),'^[^\|]\\+')==#matchstr(getline(v:lnum+1),'^[^\|]\\+')?1:'<1'
if foldclosedend(1) == line('$')
    " When all matches come from a single file, do not close that single
    " fold;
    "   " the user probably is interested in the contents.
    setlocal foldlevel=1
endif
