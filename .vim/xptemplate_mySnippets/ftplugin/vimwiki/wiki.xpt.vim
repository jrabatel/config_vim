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

XPT com " Commentaires:
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

XPT ld wraponly=wrapped " [LD]...[/LD]
[LD]`wrapped~[/LD]
..XPT
XPT ds wraponly=wrapped " [DS=]...[/DS]
[DS=`sign~]`wrapped~[/DS]
..XPT
