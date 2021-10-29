let mapleader = "\<space>"

"================== winresizer shortcuts
let g:winresizer_start_key = '<C-e>'
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1
let g:winresizer_finish_with_escape = 1

"================== Nerdtree shortcuts
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"================== Nerdtree shortcuts
nnoremap <C-t> :NERDTreeToggle<CR>

"================== Easymotion shortcuts
" <Leader>f{char} to move to {char}
map  <Leader>c <Plug>(easymotion-bd-f)
nmap <Leader>c <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
