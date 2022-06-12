if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

	Plug 'tpope/vim-fugitive'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'Shougo/deoplete.nvim'
	Plug 'lighttiger2505/deoplete-vim-lsp'
    Plug 'itchyny/lightline.vim'
	Plug 'sheerun/vim-polyglot'
	
	Plug 'NLKNguyen/papercolor-theme'

call plug#end()

colorscheme PaperColor
let g:lightline = {'colorscheme': 'PaperColor'}
