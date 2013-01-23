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

XPT ata " attr_accessor :`cursor~
attr_accessor :`cursor~
..XPT

XPT atr " attr_reader :`cursor~
attr_reader :`cursor~
..XPT

XPT atw " attr_writer :`cursor~
attr_writer :`cursor~
..XPT

XPT out " puts `cursor~
puts `cursor~
..XPT

XPT outs " puts "`cursor~"
puts "`cursor~"
..XPT

XPT outvar " puts "`var~ = #{`var~}"
puts "`var~ = #{`var~}"
..XPT

XPT outval " puts "`exp~ = #{`var~}"
puts "`exp~ = #{`var~}"
..XPT

XPT defs " def method ... end
def `method~
`cursor~
end
..XPT

XPT cmi " @member = expr
@`member~ = `expr~
..XPT

XPT cmis " @member = member
@`member~ = `member~
..XPT

XPT ++ " += 1
 += 1
..XPT

XPT -- " -= 1
 -= 1
..XPT
