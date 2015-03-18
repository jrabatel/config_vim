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


XPT * " * [ ] 
* [ ] `cursor~
..XPT

XPT ** " *text* 
*`text~*`cursor~
..XPT
XPT _ " _text_ 
_`text~_`cursor~
..XPT
XPT / " /text/ 
/`text~/`cursor~
..XPT

XPT com " [com]...[/com]
[com]`text~[/com]`cursor~
..XPT

XPT Com " Commentaires:
Commentaires:

..XPT

XPT h " heure: ...
heure: `hh~h`cursor~
..XPT

XPT int " intérêt: ...
intérêt: `int~
rappel: `rappel~
..XPT

XPT luc " intérêt: ...
intérêt: `int~
lucidité: `luc~
stabilité: `stab~
durée `dur~
rappel: `rappel~
..XPT

""""""""""""""""""""""""
" shortcuts for text
XPT Js " Je suis
Je suis `cursor~
..XPT

XPT Pt " Plus tard
Plus tard
..XPT

XPT pt " plus tard
plus tard
..XPT

XPT Upt " Un peu plus tard
Un peu plus tard
..XPT


XPT ld_ wraponly=wrapped " [LD]...[/LD]
[lucid]`wrapped~[/lucid]
..XPT
XPT ds_ wraponly=wrapped " [DS=]...[/DS]
[ds=`sign~]`wrapped~[/ds]
..XPT
XPT com_ wraponly=wrapped " [com]...[/com]
[com]`wrapped~[/com]
..XPT
XPT i_ wraponly=wrapped " [i]...[/i]
[i]`wrapped~[/i]
..XPT
XPT b_ wraponly=wrapped " [b]...[/b]
[b]`wrapped~[/b]
..XPT
