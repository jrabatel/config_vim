" Mappings for surrounding lines of eruby codes by <% ... > of <%= ... >
nmap ,<< :s/\S/<% \0/<CR> :s/$/ %>/<CR>:nohlsearch<CR>
nmap ,<= :s/\S/<%= \0/<CR> :s/$/ %>/<CR>:nohlsearch<CR>

vmap ,<< :s/\S/<% \0/<CR> :s/$/ %>/<CR>:nohlsearch<CR>
vmap ,<= :s/\S/<%= \0/<CR> :s/$/ %>/<CR>:nohlsearch<CR>
