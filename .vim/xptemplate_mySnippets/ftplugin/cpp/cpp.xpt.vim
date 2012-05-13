XPTemplate priority=personal mark=`~

" ================================= Snippets ===================================

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
namespace
{
`cursor~`wrapped~
}
..XPT

XPT unamespace " use namespace name;
use namespace `name^;`cursor~
..XPT

XPT struct "struct {...};
struct `name~
{
`cursor~
};

XPT tstruct "template ... struct {...};
template <class `class~>
struct `name~
{
`cursor~
};
