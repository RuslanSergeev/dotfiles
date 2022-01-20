" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'gcmt/taboo.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'altercation/solarized'
Plug 'neovim/nvim-lspconfig'
" Plug 'williamboman/nvim-lsp-installer'
Plug 'itchyny/lightline.vim'
Plug 'simeji/winresizer'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'  " Used along with telescope.
Plug 'nvim-telescope/telescope.nvim' " Fast file finder and live grep.
" Plug 'brooth/far.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let mapleader="\<Space>"

source ~/.config/nvim/coc.vim
" source ~/.config/nvim/coc.lua
source ~/.config/nvim/shortcuts.vim
source ~/.config/nvim/colors.vim
source ~/.config/nvim/buffers.vim
source ~/.config/nvim/tabs.vim
" source ~/.config/nvim/lsp.lua
source ~/.config/nvim/pyx.vim
source ~/.config/nvim/tabedit.vim

:set number
:set cursorline
:set scrolloff=5

" :augroup numbertoggle
" :  autocmd!
" :  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
" :  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
" :augroup END
