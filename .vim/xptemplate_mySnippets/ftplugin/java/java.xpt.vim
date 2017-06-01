XPTemplate priority=personal mark=`~

" ================================= Snippets ===================================

XPT _add "// **ADDED note title
// **ADDED `title~
`cursor~
..XPT

XPT _todo "// **TODO note title
// **TODO `title~
..XPT

XPT _note "// **NOTE note title
// **NOTE `title~
..XPT

XPT out " System.out.println...;
System.out.println("`cursor~");
..XPT

XPT outvar " System.out.println\(var=...;
System.out.println("`variable~ = "+`variable~);
..XPT

XPT outval " System.out.println\(txt=...;
System.out.println("`txt~ = "+`variable~);
..XPT

XPT cmis " this.member = member;
this.`member~ = `member~;
..XPT

XPT cmi " this.member = value;
this.`member~ = `value~;
..XPT

XPT forc " for int `i~=0; `i~ < `cont~.size; `i~++ 
for( int `i~=0; `i~ < `cont~.size(); `i~++ ) {
`cursor~
}
..XPT

XPT form " loop over a map
for ( Map.Entry<`K~,`V~> entry : `map~.entrySet() ) {
`cursor~
}
..XPT

XPT list " List<`cursor~>
List<`T~>`cursor~
..XPT

XPT set " Set<`cursor~>
Set<`T~>
..XPT

XPT map " Map<key,value>
Map<`key~,`value~> `cursor~
..XPT

XPT exit " System.exit 0
System.exit(0);
..XPT
