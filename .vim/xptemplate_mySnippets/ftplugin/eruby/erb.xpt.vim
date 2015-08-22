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


XPT <if " <% if ... %> <% end %>
<%= if `condition~ %>
  `cursor~
<%= end %>
..XPT

XPT <ife " <% if ... %> <% else %> <% end %>
<%= if `condition~ %>
  `cursor~
<%= else %>

<%= end %>
..XPT

XPT <lt " <%= link_to "text", "link" %>
<%= link_to "`text~", `link~ %>
..XPT

XPT lt " link_to "text", "link"
link_to "`text~", `link~
..XPT

XPT bt " button_to "text", "link"
button_to `text~, `link~
..XPT

XPT <img " image_tag "img.png", alt: "text"
image_tag("`img_location~", alt: "`text~")
..XPT

XPT <p " <% provide (:var, 'value') %>
<% provide (:`var~, '`value~') %>
..XPT

" ===== Forms
XPT form " form_for @model do ...
<%= form_for(@`model~) do |f| %>
  <%= render 'shared/error_messages', object: f.object %>
  `cursor~
<% end %>
..XPT

XPT ff " form field
XSET type=Choose(['text_field','input','password_field'])
<%= f.label :`attr~ %>
<%= f.`type~ :`attr~ %>
..XPT

XPT fsub " form submit field
<%= f.submit "`attr~" %>
..XPT

" I18N
XPT <t " <%= t "..." %>
<%= t('`cursor~') %>
..XPT
