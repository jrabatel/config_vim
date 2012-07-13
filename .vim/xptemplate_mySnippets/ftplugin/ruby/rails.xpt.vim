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

XPT vl " validates length
validates :`attr~, :length => { :minimum => `0~, :maximum => `100~ }
..XPT

XPT enclose_ wraponly=wrapped " \begin{..} SEL \end{..}
\begin{`something~}
    `wrapped~
\end{`something~}
