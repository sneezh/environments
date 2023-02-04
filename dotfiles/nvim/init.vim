set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
set autowrite

" Plugs
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

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'SirVer/ultisnips'

" project tree
Plug 'nvim-tree/nvim-web-devicons' " for file icons
Plug 'nvim-tree/nvim-tree.lua'

" Git
Plug 'airblade/vim-gitgutter'
call plug#end()
" -------------------------------------------------------------

let mapleader = ','
set updatetime=100

" finder
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" -------------------------------------------------------------

" go-vim
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>a  :GoAlternate<cr>
autocmd FileType go nmap <F8> :GoDebugContinue<cr>
autocmd FileType go nmap <F9> :GoDebugBreakpoint<cr>

let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_methods = 1
let g:go_highlight_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_extra_types = 0

colorscheme darcula

highlight goFunctionCall guifg=#B09D79
highlight goBuiltins guifg=#FFC66D
highlight goReceiverType guifg=#6FAFBD
highlight goReceiverVar guifg=#4EADE5
highlight goTypeName guifg=#A9B7C6
highlight goTypeConstructor guifg=#6FAFBD
highlight goBuildComment guifg=#629755
highlight goBuildDirectives guifg=#A9B7C6
highlight Constant guifg=#CC7832
highlight goTypeName guifg=#FFC66D
" --------------------------------------------------------------

" Highlighting Coc errors, warnings
hi! link CocErrorSign ErrorSign
hi! link CocWarningSign WarningSign
hi! link CocInfoSign InfoSign
hi! link CocHintSign HintSign
hi! link CocErrorFloat Pmenu
hi! link CocWarningFloat Pmenu
hi! link CocInfoFloat Pmenu
hi! link CocHintFloat Pmenu
hi! link CocHighlightText IdentifierUnderCaret
hi! link CocHighlightRead IdentifierUnderCaret
hi! link CocHighlightWrite IdentifierUnderCaretWrite
hi! link CocErrorHighlight CodeError
hi! link CocWarningHighlight CodeWarning
hi! link CocInfoHighlight CodeInfo
hi! link CocHintHighlight CodeHint
" -------------------------------------------------------------

" Highlighting GitGlutter
highlight GitGutterAdd    guibg=#384C38 guifg=#384C38 ctermfg=2
highlight GitGutterChange guibg=#374752 guifg=#374752  ctermfg=3
highlight GitGutterDelete guibg=#656E76 guifg=#656E76  ctermfg=1
" -------------------------------------------------------------

" nvim-tree
lua <<EOF
require("nvim-tree").setup({
	view = {
		width = 60
	}
})
EOF

let g:nvim_tree_git_hl = 1 
let g:nvim_tree_highlight_opened_files = 1 
let g:nvim_tree_root_folder_modifier = ':~' 
let g:nvim_tree_add_trailing = 1 
let g:nvim_tree_group_empty = 1 
let g:nvim_tree_icon_padding = ' ' 
let g:nvim_tree_symlink_arrow = ' >> ' 
let g:nvim_tree_respect_buf_cwd = 1 
let g:nvim_tree_create_in_closed_folder = 1 
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } 

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" -------------------------------------------------------------
