---@diagnostic disable-next-line: undefined-global
local vim = vim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- LSP
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	-- LSP Saga
	"glepnir/lspsaga.nvim",

	-- Theme
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

	-- Devicons
	"nvim-tree/nvim-web-devicons",

	-- Status bar
	"nvim-lualine/lualine.nvim",

	-- Fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" } },
	},

	-- Git
	"lewis6991/gitsigns.nvim",

	-- Syntax highlight
	"nvim-treesitter/nvim-treesitter",

	-- Autoclose
	"windwp/nvim-ts-autotag",
	"windwp/nvim-autopairs",

	-- Autocomplete
	-- Tailwind CSS
	"js-everts/cmp-tailwind-colors",

	-- CMP
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-vsnip",
	"hrsh7th/vim-vsnip",

	-- IncRename
	{
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup()
		end,
	},

	-- Todo Comments
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},

	-- Mini
	{ "echasnovski/mini.bracketed", version = "*" },
	{ "echasnovski/mini.indentscope", version = "*" },
	{ "echasnovski/mini.surround", version = "*" },

	-- Copilot
	"github/copilot.vim",

	-- Formatters
	{
		"nvimtools/none-ls.nvim",
		dependencies = "nvim-lua/plenary.nvim",
	},

	-- Home screen
	{
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},

	-- Comment
	{
		"numToStr/Comment.nvim",
		dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
	},

	-- NPM packages
	"vuki656/package-info.nvim",

	-- Tmux navigator
	"christoomey/vim-tmux-navigator",

	-- HardTime
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		opts = {},
	},
}

local opts = {}

require("lazy").setup(plugins, opts)
