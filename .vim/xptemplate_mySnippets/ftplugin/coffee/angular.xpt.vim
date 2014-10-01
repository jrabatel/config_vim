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

XPT sc " $scope.
$scope.
..XPT

XPT ngct " controller
app.controller '`Name~Controller', ['$scope', ($scope) ->
  `cursor~
]
..XPT

XPT ngdir " directive
app.controller '`Name~Controller', ['$scope', ($scope) ->
  `cursor~
]
..XPT

XPT ngresource " resource factory
app.factory '`Model~', ($resource) ->
  $resource('/`models~/:id', {id: '@id'})
..XPT
