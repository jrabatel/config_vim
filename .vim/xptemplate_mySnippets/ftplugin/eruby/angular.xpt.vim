XPTemplate priority=personal mark=`~

let s:f = g:XPTfuncs()

XPTinclude
      \ _common/common
      \ _common/personal


" ========================= Function and Variables =============================


" ================================= Snippets ===================================

" DIRECTIVES
XPT ngctrl
ng-controller="`cursor~"
..XPT

XPT ngmod
ng-model="`cursor~"
..XPT

XPT ngbind
ng-bind="`cursor~"
..XPT

XPT ngclick
ng-click="`cursor~"
..XPT

XPT ngdblclick
ng-dblclick="`cursor~"
..XPT

XPT ng
ng-`name~="`cursor~"
..XPT

XPT ngsubmit
ng-submit="`cursor~"
..XPT

XPT ngchange
ng-change="`cursor~"
..XPT

XPT ngrepeat
ng-repeat="`elt~ in `elt~s"
..XPT

" TEMPLATES
XPT tpl
{{`cursor~}}
..XPT
