vim.cmd 'packadd paq-nvim'
local paq = require('paq-nvim').paq

paq{'savq/paq-nvim', opt=true} -- Make paq manage paq

paq{'akinsho/nvim-bufferline.lua'} -- File tabs (on top)
paq{'editorconfig/editorconfig-vim'} -- .editorconfig support
paq{'folke/lsp-trouble.nvim'} -- LSP tips at bottom
paq{'hoob3rt/lualine.nvim'} -- Cool status line
paq{'hrsh7th/nvim-compe'} -- LSP based completions (nvim 0.5)
paq{'ishan9299/nvim-solarized-lua'}
paq{'karb94/neoscroll.nvim'} -- Smooth scrolling
paq{'kyazdani42/nvim-tree.lua'} -- Tree of files and folders
paq{'kyazdani42/nvim-web-devicons'} -- (neo)vim-devicons
paq{'lervag/vimtex'}
paq{'lukas-reineke/indent-blankline.nvim', branch='lua'}
paq{'neovim/nvim-lspconfig'} -- LSP (nvim 0.5)
--paq{'ntpeters/vim-better-whitespace'}
paq{'nvim-treesitter/nvim-treesitter', run =':TSUpdate'} -- (experimental) (nvim 0.5)
