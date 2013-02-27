XPTemplate priority=personal mark=`~

let s:f = g:XPTfuncs()

XPTvar $TRUE          1
XPTvar $FALSE         0
XPTvar $NULL          NULL
XPTvar $UNDEFINED     NULL
XPTvar $VOID_LINE     /* void */;
XPTvar $BRif \n

XPTinclude
      \ _common/common
      \ _common/personal


" ========================= Function and Variables =============================


" ================================= Snippets ===================================

XPT eg " e.g., 
e.g., `cursor~
..XPT

XPT ie " i.e., 
i.e., `cursor~
..XPT

XPT wrt " w.r.t. 
w.r.t. `cursor~
..XPT

XPT st " s.t.
s.t. `cursor~
..XPT

XPT stt " such that 
such that `cursor~
..XPT

XPT of " of the form 
of the form `cursor~
..XPT

XPT iot " in order to
in order to `cursor~
..XPT

XPT /t " \t (tabulation)
\t
..XPT

XPT /n " \n (new line)
\n
..XPT

" Double characters (without spaces)
XPT " " "text"
"`text~"`cursor~
..XPT

XPT ' " 'text'
'`text~'`cursor~
..XPT

XPT ` " `text`
\``text~\``cursor~
..XPT

XPT ( " (text)
(`text~)`cursor~
..XPT

XPT { " {text}
{`text~}`cursor~
..XPT

XPT [ " [text]
[`text~]`cursor~
..XPT

XPT | " |text|
|`text~|`cursor~
..XPT

" Double characters (with spaces)
XPT "" " " text "
" `text~ "`cursor~
..XPT

XPT '' " ' text '
' `text~ '`cursor~
..XPT

XPT `` " ` text `
\` `text~ \``cursor~
..XPT

XPT (( " ( text )
( `text~ )`cursor~
..XPT

XPT {{ " { text }
{ `text~ }`cursor~
..XPT

XPT [[ " [ text ]
[ `text~ ]`cursor~
..XPT

XPT || " | text |
| `text~ |`cursor~
..XPT
