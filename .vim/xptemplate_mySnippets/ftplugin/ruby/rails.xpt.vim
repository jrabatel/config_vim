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

XPT hm " has_many
has_many :`cursor~
..XPT
XPT bt " belongs_to
belongs_to :`cursor~
..XPT

XPT vac " validates complete
validates :`attr~, :`crit~ => { :`key~ => `val~ }
..XPT

XPT va " validates
validates :`attr~, :`crit~
..XPT

XPT val " validates length
validates :`attr~, length: { minimum: `0~, maximum: `100~ }
..XPT

XPT vap " validates presence
validates :`attr~, presence: true
..XPT

XPT vau " validates uniqueness
validates :`attr~, uniqueness: true
..XPT

XPT vauc " validates uniqueness, ignoring case
validates :`attr~, uniqueness: { case_sensitive: false }
..XPT

XPT aac " attr_accessible :
attr_accessible :`attr~
..XPT

XPT bef_s " before_save { |obj| code }
before_save { |`obj~| `cursor~ }
..XPT

XPT red " redirect_to path
redirect_to `cursor~
..XPT

XPT red_e " redirect_to path, error: "Message"
redirect_to `path~, error: "`cursor~"
..XPT
XPT red_n " redirect_to path, notice: "Message"
redirect_to `path~, notice: "`cursor~"
..XPT
XPT red_s " redirect_to path, success: "Message"
flash[:notice] = "`message~"
redirect_to `path~
..XPT

