" Vim Colour File based on EasyColour Plugin

set background=dark

hi clear
if exists("syntax_on")
	syntax reset
endif

call EasyColour#ColourScheme#LoadColourScheme('skittles_berry_modified')
