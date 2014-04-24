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
XPT block " { |`var~| `cursor~ }
{ |`var~| `cursor~ }
..XPT

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
puts "`cursor~"
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

XPT warn " puts `cursor~
puts "`cursor~"
..XPT

XPT warns " puts "`cursor~"
puts "`cursor~"
..XPT

XPT warnvar " puts "`var~ = #{`var~}"
puts "`var~ = #{`var~}"
..XPT

XPT warnval " puts "`exp~ = #{`var~}"
puts "`exp~ = #{`var~}"
..XPT

XPT hash " `var~ = {}
`var~ = {}
..XPT

XPT list " `var~ = []
`var~ = []
..XPT

XPT init " def initialize
def initialize
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

XPT b " { |el| }
{ |`el~| `cursor~ }
..XPT

XPT select " select { |el|  }
select { |`el~| `cursor~ }
..XPT

XPT reject " reject { |el|  }
reject { |`el~| `cursor~ }
..XPT

XPT find " find { |el|  }
find { |`el~| `cursor~ }
..XPT

XPT dir " Dir["str"]
Dir["`str~"]`cursor~
..XPT

XPT direach " Dir["str"].each { |file_path| }
Dir["`str~"].each { |`file_path~| `cursor~ }
..XPT

XPT fopenline " open\(..) { |..| .. }.each_line
File.open(`input_file_path~, 'r').each_line { |`l~| `cursor~ }

XPT time " time = Benchmark.measure...
`time~ = Benchmark.measure do
  `cursor~
end
puts "`Time:~ #{`time~}"
..XPT

XPT time_ wraponly=wrapped " time = Benchmark.measure...
`time~ = Benchmark.measure do
  `wrapped~
end
puts "`Time:~ #{`time~}"
`cursor~
..XPT
