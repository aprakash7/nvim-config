local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	vim.notify("That didn't work")
	return
end

-- Have packer use a popup window OPTIONAL
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	--My plugins here
	--lazy loading is when plugins don't run till a specific <cmd> is entered

	--essentials
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
	use("jiangmiao/auto-pairs") -- auto pairs helps to close brackets
	-- use("9mm/vim-closer") -- closes brackets or sentences, useful for js where we have to click enter and write. this fills it.
	use("numToStr/Comment.nvim") -- Easily comment stuff
	use("kyazdani42/nvim-web-devicons") -- web devicons
	use("kyazdani42/nvim-tree.lua") -- Nvim tree
	use("akinsho/bufferline.nvim") -- Bufferline
	use("moll/vim-bbye") -- needed for bufferline
    	use("akinsho/toggleterm.nvim") -- terminal extension
	use("ahmedkhalf/project.nvim") --try this
	use("karb94/neoscroll.nvim")	-- smooth scrolling

	use('andweeb/presence.nvim') -- discord rich presence
	use('davidgranstrom/nvim-markdown-preview') -- markdown preview

	--LUA LINE
	use("nvim-lualine/lualine.nvim")

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp") -- lsp completion
	use("hrsh7th/cmp-nvim-lua") -- lua completion

	-- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- COLORSCHEMES
	use({ "norcalli/nvim-colorizer.lua", run = ":ColorizerAttachToBuffer" }) -- show colors as you type (RGB)
	use("lunarvim/colorschemes") -- different colorschemes
	use("folke/tokyonight.nvim") -- VScode like theme+ supports LSP and plugins
	use("tiagovla/tokyodark.nvim") -- tokyo dark
    	use('ful1e5/onedark.nvim')	-- onedark
	-- use("aprakash7/nvcode-color-schemes.vim") --new colorscheme for behave

	-- CSS
	--use("rstacruz/vim-hyperstyle") -- CSS autocomplete helps, like m: will do margin:

	-- LSP installer
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer") -- lsp config
	use("jose-elias-alvarez/null-ls.nvim") -- Null-LS formatting and linting

	-- TELESCOPE
	use("nvim-telescope/telescope.nvim") -- telescope
	use("nvim-telescope/telescope-media-files.nvim") -- for images etc

	--TREESITTER
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) -- treesitter
	use("p00f/nvim-ts-rainbow") -- to distinguish paranthesis
	use("nvim-treesitter/playground") -- for getting the types

	--GIT
	use("Lewis6991/gitsigns.nvim")

	-- STARTUP
	use("goolord/alpha-nvim")
	use("lewis6991/impatient.nvim") --faster loading

	--INDENTATION
	--use "lukas-reineke/indent-blankline.nvim"


    -- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
