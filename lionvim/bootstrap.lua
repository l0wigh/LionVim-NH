local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use { "$HOME/.config/lionvim/liontools/", requires = { { "rcarriga/nvim-notify", "nvim-lua/popup.nvim", 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' } } }
	use '$HOME/.config/lionvim/calc.nvim'
	use 'LunarVim/onedarker'

	-- LSP Plugins Chain
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-path'
	use 'onsails/lspkind-nvim'
	use "windwp/nvim-autopairs"

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
  if packer_bootstrap then
    require('packer').sync()
  end
end)
