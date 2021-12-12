" Better tab experience - from https://webdevetc.com/
map <leader>tn :tabnew<cr>
map <leader>tg :tabnext 
map <leader>tm :tabmove 
map <leader>tc :tabclose<cr>

" Buffer ops
map <leader>bn :bnext<cr>
map <leader>bp :bprevious<cr>

" Taboo pluggin tab ops
map <leader>tr :TabooRename 
map <leader>to :TabooOpen 
let g:taboo_tab_format = " [%f]%I%m "
let g:taboo_renamed_tab_format = " [%l]%I%m "
