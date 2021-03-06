require('packer').startup({function()
	use 'wbthomason/packer.nvim'

	use { "$HOME/.config/lionvim/liontools/", requires = { { "rcarriga/nvim-notify", "nvim-lua/popup.nvim", 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' } } }
	use { "$HOME/.config/lionvim/calc.nvim" }
	use 'LunarVim/onedarker'
	use 'plenary.nvim'
	use {
		'neoclide/coc.nvim',
		branch = 'release'
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use 'jiangmiao/auto-pairs'

	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
	}

	use "terrortylor/nvim-comment"
	use 'folke/lsp-colors.nvim'
	use 'glepnir/dashboard-nvim'

	use "folke/which-key.nvim"
	use "mbbill/undotree"

	use "rafamadriz/friendly-snippets"
	use "ray-x/lsp_signature.nvim"



end,
config = {
	display = {
		open_fn = require('packer.util').float,
	}
}})

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerCompile
autocmd BufWritePost plugins.lua source <afile> | PackerInstall
augroup end
]])

require("plugins.nvimtree")
require("plugins.nvimcomment")
require("plugins.dashboard")
require("plugins.whichkey")
