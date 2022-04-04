if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

	Plug 'tpope/vim-fugitive'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'Shougo/deoplete.nvim'
	Plug 'lighttiger2505/deoplete-vim-lsp'
    Plug 'itchyny/lightline.vim'
	
	Plug 'NLKNguyen/papercolor-theme'

call plug#end()

colorscheme PaperColor
let g:lightline = {'colorscheme': 'PaperColor'}

if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(
      \   lsp#utils#find_nearest_parent_file_directory(
      \     lsp#utils#get_buffer_path(), ['.ccls', 'compile_commands.json', '.git/']))},
      \ 'initialization_options': {
      \   'highlight': { 'lsRanges' : v:true },
      \   'cache': {'directory': stdpath('cache') . '/ccls' },
      \ },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif
