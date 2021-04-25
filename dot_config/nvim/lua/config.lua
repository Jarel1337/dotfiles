-- Language servers
require'lspconfig'.rust_analyzer.setup{}

-- LSP list of problems
require'trouble'.setup{}

-- Smooth scroll
require'neoscroll'.setup()

-- Completions (nvim-compe)
vim.o.completeopt = "menuone,noselect"
require'completions'

-- Hybrid line numbers
vim.wo.relativenumber = true
vim.wo.number = true

-- Tabs
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4

-- Cool status line (powerline) Themes: https://github.com/hoob3rt/lualine.nvim/blob/master/THEMES.md
require('lualine').setup{
	--options = { theme = 'solarized_light' },
}

-- Indentation help
--vim.g.indent_blankline_char = '▏'
vim.g.indent_blankline_char = '▏'

-- Treesitter doesn't work propperly atm, keep one commented out
vim.g.indent_blankline_use_treesitter = true
--vim.g.indent_blankline_show_trailing_blankline_indent = false

vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {'class', 'function', 'method', '^if', '^while', '^for', '^object', '^table', 'block', 'arguments'}
--vim.g.indent_blankline_filetype_exclude -- set to nerdtree etc

-- True color
vim.o.termguicolors = true

vim.cmd('colorscheme solarized')

vim.api.nvim_set_keymap("n", "<C-h>", [[:LspTroubleToggle<CR>]], {expr = true, noremap = true, silent = true})
