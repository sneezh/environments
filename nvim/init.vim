set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

call plug#begin()
" File search
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Language syntaxix helper
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Editor config
Plug 'editorconfig/editorconfig-vim'

" Theme
Plug 'doums/darcula'

" Go debugging
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

let mapleader = ','

" finder
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" hot reload
nnoremap <leader>sv :source $MYVIMRC<CR>

let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_methods = 1
let g:go_highlight_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_extra_types = 1

colorscheme darcula

highlight goFunctionCall guifg=#B09D79
highlight goReceiverType guifg=#6FAFBD
highlight goReceiverVar guifg=#4EADE5
highlight goTypeName guifg=#A9B7C6
highlight goTypeConstructor guifg=#6FAFBD
highlight goBuildComment guifg=#629755
highlight goBuildDirectives guifg=#A9B7C6
highlight Constant guifg=#CC7832

