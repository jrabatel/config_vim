XPTemplate priority=personal mark=`~

XPTinclude
      \ _common/common
      \ _common/personal

" ================================= Snippets ===================================
XPT cmi " Constructor member initilization
this.`member~ = `val~;
..XPT

XPT cmis " Constructor member initilization (simple)
this.`val~ = `val~;
..XPT

XPT out " Console.WriteLine
Console.WriteLine(`cursor~);
..XPT

XPT outvar
Console.WriteLine("`var~ = " + `var~);
..XPT

XPT outval
Console.WriteLine("`exp~ = " + `var~);
..XPT

XPT nlist
var `var~ = new List<`type~>();

..XPT

XPT adds
`elt~s.Add(`elt~);

..XPT

XPT add
`list~.Add(`elt~);

..XPT


XPT psm " public static method
public static `void~ `method~(`args~)
{
`cursor~
}
..XPT
