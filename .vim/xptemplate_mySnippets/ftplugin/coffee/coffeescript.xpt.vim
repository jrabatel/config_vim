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


" ================================= Snippets ===================================

XPT out " console.log 
console.log "`cursor~"
..XPT

XPT outvar " console.log 'var = ' + var
console.log "`var~ = " + `var~
..XPT

XPT outval " console.log 'var = ' + val
console.log "`var~ = " + `val~
..XPT
