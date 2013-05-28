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
XPT hmt " has_many ... through: :
has_many :`items~, through: :`relation~
..XPT
XPT bt " belongs_to
belongs_to :`cursor~
..XPT

XPT vac " validates complete
validates :`attr~, `crit~: { `key~: `val~ }
..XPT

XPT va " validates
validates :`attr~, `crit~:
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
flash[:success] = "`message~"
redirect_to `path~
..XPT

XPT fla
flash[:`type~] = "`message~"`cursor~
..XPT
XPT fla_e
flash[:error] = "`message~"`cursor~
..XPT
XPT fla_n
flash[:notice] = "`message~"`cursor~
..XPT
XPT fla_s
flash[:success] = "`message~"`cursor~
..XPT

XPT params
params[:`field~]`cursor~
..XPT
XPT session
session[:`field~]`cursor~
..XPT

" RSPEC
XPT it " it "..." do end
it '`descr~' do
  `cursor~
end
..XPT

XPT itp " itpending 
it "`cursor~"
..XPT
XPT its " itsimple 
it { `cursor~ }
..XPT

XPT sh " should 
should
..XPT

XPT shn " should_not
should_not
..XPT

XPT expect " expect...
expect {
  `action~
}.to change { `tobechanged~ }.`whichdifference~
..XPT

XPT let " let :var { expr }
let (:`var~) { `expr~ }
..XPT

" FACTORIES
XPT fact " FactoryGirl.define do ... end
FactoryGirl.define do
  factory :`model~ do |f|
    f.`cursor~
  end
end
..XPT

XPT facc " Factory.create :model
FactoryGirl.create(:`model~)`cursor~
..XPT
XPT facb " Factory.build :model
FactoryGirl.build(:`model~)`cursor~
..XPT

" I18N AND VIEWS
XPT t " t "..."
t('`cursor~')
..XPT
XPT tt " t "..."
t('`cursor~')
..XPT

XPT lt " link_to "text", "link"
link_to '`text~', `link~
..XPT

XPT img " image_tag "img.png", alt: "text"
image_tag('`img_location~', alt: '`text~')
..XPT
