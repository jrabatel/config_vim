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

XPT out " std::cout << "`cursor~" << std::endl;
std::cout << "`cursor~" << std::endl;
..XPT

XPT outvar " std::cout << "variable = " << `cursor~ << std::endl;
std::cout << "`variable~ = " << `variable~ << std::endl;
..XPT

XPT outval " std::cout << "`txt~ = " << `expr~ << std::endl;
std::cout << "`txt~ = " << `expr~ << std::endl;
..XPT

XPT cmis " var (var)`cursor~
`member~(`member~)`cursor~
..XPT

XPT cmi " member (value)`cursor~
`member~(`value~)`cursor~
..XPT

XPT forc " for itType::iterator it=cont.begin; it!=cont.end; ++it 
for( `container_type~::iterator `it~=`cont~.begin(); `it~!=`cont~.end(); ++`it~ )
{
`cursor~
}
..XPT

XPT forcc " for itType::const_iterator it=cont.begin; it!=cont.end ++it 
for( `container_type~::const_iterator `it~=`cont~.begin(); `it~!=`cont~.end(); ++`it~ )
{
`cursor~
}
..XPT

XPT () " ( `cursor~ )
( `cursor~ )
..XPT

XPT namespace_ wraponly=wrapped " namespace { ... }
namespace `name~ {
`cursor~`wrapped~
} // `name~ namespace
..XPT

XPT unamespace " use namespace name;
use namespace `name^;`cursor~
..XPT

XPT struct "struct {...};
struct `name~
{
`cursor~
};
..XPT

XPT tstruct "template ... struct {...};
template <class `class~>
struct `name~
{
`cursor~
};
..XPT

XPT head " #ifndef ... #define ... #endif
#ifndef `NAME~
#define `NAME~

`cursor~

#endif // `NAME~
..XPT

XPT incl " #include <`cursor~> (include library)
#include <`cursor~>
..XPT

XPT incf " #include "`cursor~" (include file)
#include "`cursor~"
..XPT

XPT tpd " typedef type newType;
typedef `oldType~    `newType~;`cursor~
..XPT

XPT string " std::string
std::string
..XPT

XPT list " std::list<...>
std::list<`cursor~>
..XPT

XPT set " std::set<...>
std::set<`cursor~>
..XPT

XPT map " std::map<...,...>
std::map<`key~,`value~> `cursor~
..XPT

XPT pair " std::pair<...,...>
std::pair<`type1~,`type2~> `cursor~
..XPT

XPT cout " std::cout <<
std::cout << `cursor~
..XPT

XPT endl " std::endl;
std::endl;
..XPT

XPT ostream " std::ostream;
std::ostream
..XPT

XPT tostr " create a str from numeric variable
std::string `var~Str;
std::stringstream `var~Out;
`var~Out << `var~;
`var~Str = `var~Out.str();
..XPT
