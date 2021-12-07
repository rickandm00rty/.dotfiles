"Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim')) 
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
endif


call plug#begin('~/.vim/autoload/')
  "https://github.com/preservim/nerdtree
  Plug 'preservim/nerdtree'
  
  "https://github.com/morhetz/gruvbox/wiki/Installation#general
  Plug 'morhetz/gruvbox'

  "https://github.com/junegunn/fzf/blob/master/README-VIM.md  
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

let g:gruvbox_transparent_bg = '(1)'
let g:floaterm_keymap_toggle = '<F12>'

":FloatermNew && :FloatermHide
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9
colorscheme gruvbox

autocmd vimenter * ++nested colorscheme gruvbox
set termguicolors
set background=dark
"highlight Normal guibg=none

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set guicursor=
set nu
set nohlsearch
set hidden
set nowrap
set incsearch
set scrolloff=8
"set colorcolumn=100

"True Color Support
if (empty($TMUX))
 if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
 endif
endif

nmap <C-P> :FZF<CR>