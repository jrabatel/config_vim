set tabstop=2
set shiftwidth=2
set expandtab

" alternate file 1 is spec file
let g:fswitchdst1 = 'spec.ts'
let g:fswitchlocs1 = '.'
let g:fswitchfnames1 = ''
" alternate file 2 is html file
let g:fswitchdst2 = 'html'
let g:fswitchlocs2 = '.'
let g:fswitchfnames2 = ''
" alternate file 3 is scss/css file
let g:fswitchdst2 = 'scss,css'
let g:fswitchlocs2 = '.'
let g:fswitchfnames2 = ''


" au! BufEnter *.ts let b:fswitchdst = 'spec.ts' | let b:fswitchlocs = '.'
" au! BufEnter *.spec.ts let b:fswitchdst = 'ts' | let b:fswitchfnames = '/.spec$//' | let b:fswitchlocs = '.'
