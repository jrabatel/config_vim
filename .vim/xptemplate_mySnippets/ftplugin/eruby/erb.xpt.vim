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

XPT < " <% `cursor~ %>
<% `cursor~ %>
..XPT

XPT <= " <%= `cursor~ %>
<%= `cursor~ %>
..XPT

XPT <lt " <%= link_to "text", "link" %>
<%= link_to "`text~", "`link~"`cursor~ %>
..XPT

XPT <img " image_tag "img.png", alt: "text"
image_tag("`img_location~", alt: "`text~")
..XPT
