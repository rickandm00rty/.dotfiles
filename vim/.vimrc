"Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim')) 
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
endif

"Plugins
call plug#begin('~/.vim/autoload/')
  
  "File Explorer
  Plug 'preservim/nerdtree'

  "Theme
  "Plug 'tomasr/molokai'
  "Plug 'fmoralesc/molokayo'
  Plug 'bluz71/vim-nightfly-guicolors'

  "Status & Theme
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  
  "NerdTree Icons
  Plug 'ryanoasis/vim-devicons'
call plug#end()

"Apply Theming and Transparency
colorscheme nightfly
let g:airline_theme='nightfly'
let g:nightflyTransparent = 1

set termguicolors
set background=dark
set tabstop=4 softtabstop=4
set shiftwidth=4
set relativenumber
set noerrorbells
set expandtab
set smartindent
set guicursor=
set nu
set nohlsearch
set hidden
set wrap
set linebreak
set formatoptions+=l
set incsearch
set scrolloff=8
highlight Normal guibg=none

"Disable Default Status Line
set noshowmode

"True Color Support
if (empty($TMUX))
 if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
 endif
endif

"General Remaps
" esc in insert & visual mode
inoremap kj <esc>
vnoremap kj <esc>

"NERDTree Customization
nnoremap <C-f> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

