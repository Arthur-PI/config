if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

	Plug 'tpope/vim-fugitive'
    Plug 'itchyny/lightline.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'ludovicchabant/vim-gutentags'
	
	Plug 'NLKNguyen/papercolor-theme'

call plug#end()

colorscheme PaperColor
let g:lightline = {'colorscheme': 'PaperColor'}
