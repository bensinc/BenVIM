" Ben's NeoVIM Config

" Plugins
call plug#begin('~/.config/nvim/plugged')

	Plug 'tpope/vim-surround' " Remove?

	" File explorer
	Plug 'kyazdani42/nvim-web-devicons' " for file icons
	Plug 'kyazdani42/nvim-tree.lua'

	" Status line
	Plug 'nvim-lualine/lualine.nvim'
	" If you want to have icons in your statusline choose one of these
	Plug 'kyazdani42/nvim-web-devicons'

	" Buffer line
	Plug 'akinsho/bufferline.nvim'


	" Fuzzy file finder
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

	"Plug 'bensinc/nord-vim'

	Plug 'arcticicestudio/nord-vim'
	Plug 'wfxr/minimap.vim'

	Plug 'glepnir/dashboard-nvim'

call plug#end()


nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them

" Open fuzzy file finder
nnoremap <silent> <C-p> :Telescope find_files<CR>

" Switch buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

" Close buffers
nnoremap <C-w> :bdelete<CR>

" Setup Nord color scheme, but switch to black background
let g:nord_cursor_line_number_background = 1
colorscheme nord
highlight Normal guibg=black


" Indenting
set smartindent
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

" Show line numbers
set nu

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

set mouse=a

let g:minimap_width = 10
"let g:minimap_auto_start = 1
"let g:minimap_auto_start_win_enter = 1

" Toggle minimap
nnoremap <C-m> :MinimapToggle<CR>


" Load Lua configs
lua require('nvim-tree-config')
lua require('telescope-config')
lua require('lualine-config')
lua require'lualine'.setup()
lua require('bufferline-config')
lua require('dashboard-config')
