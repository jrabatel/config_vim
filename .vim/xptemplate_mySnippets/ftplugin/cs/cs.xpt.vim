XPTemplate priority=personal mark=`~

XPTinclude
      \ _common/common
      \ _common/personal

" ================================= Snippets ===================================
XPT out " Console.WriteLine
Console.WriteLine(`cursor~);
..XPT

XPT outvar
Console.WriteLine("`var~ = " + `var~);
..XPT

XPT outval
Console.WriteLine("`exp~ = " + `var~);
..XPT
