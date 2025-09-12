let g:zoom#statustext = "ZooM"
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'zoom' ] ]
      \ },
      \ 'component_function': {
      \   'zoom': 'Zoomstatus'
      \ },
      \ }

function! Zoomstatus()
    return zoom#statusline()
endfunction

