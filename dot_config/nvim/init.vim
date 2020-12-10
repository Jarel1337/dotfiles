call plug#begin(stdpath('data') . '/plugged')
" Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'make release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'lervag/vimtex'
Plug 'neovim/nvim-lspconfig'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'thaerkh/vim-indentguides'
" Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
" Plug 'SirVer/ultisnips'
call plug#end()

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Config
let g:deoplete#enable_at_startup = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:indent_guides_enable_on_vim_startup = 1
" Use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Theme
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

" tabs
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

:lua << END
	require'lspconfig'.rust_analyzer.setup{on_attach=require'completion'.on_attach}
	require'lspconfig'.pyls.setup{}
END
set completeopt=longest,menuone,noinsert
inoremap <expr> <Tab>	pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab>	pumvisible() ? "\<C-p>" : "\<S-Tab>"
