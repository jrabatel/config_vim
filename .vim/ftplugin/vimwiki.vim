set tabstop=2
set shiftwidth=2
set expandtab

" mappings (write the complete date or the wiki date format or the fr simple date)
nnoremap <leader>D :r!date +'\%Y-\%m-\%d \%a \%H:\%M:\%S \%Z'<CR>
nnoremap <leader>LD :r!date +\%d/\%m/\%Y<CR>

" to automatically start a new line and indent it
nmap <leader>oo o<ESC>>>A
nmap <leader>oO o<ESC><<A
