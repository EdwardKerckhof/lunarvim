-- Additional Plugins
lvim.plugins = {
	"nvim-treesitter/playground",
	"mfussenegger/nvim-jdtls",
	"karb94/neoscroll.nvim",
	"j-hui/fidget.nvim",
	"windwp/nvim-ts-autotag",
	"kylechui/nvim-surround",
	"christianchiarulli/harpoon",
	"MattesGroeger/vim-bookmarks",
	"NvChad/nvim-colorizer.lua",
	"ghillb/cybu.nvim",
	"moll/vim-bbye",
	"folke/todo-comments.nvim",
	"windwp/nvim-spectre",
	"is0n/jaq-nvim",
	{
		"0x100101/lab.nvim",
		run = "cd js && npm ci",
	},
	"f-person/git-blame.nvim",
	"ruifm/gitlinker.nvim",
	"mattn/vim-gist",
	"mattn/webapi-vim",
	"folke/zen-mode.nvim",
	"lvimuser/lsp-inlayhints.nvim",
	"lunarvim/darkplus.nvim",
	"lunarvim/templeos.nvim",
	{
		"github/copilot.vim",
	},
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{
		"chipsenkbeil/distant.nvim",
		config = function()
			require("distant").setup({
				-- Applies Chip's personal settings to every machine you connect to
				--
				-- 1. Ensures that distant servers terminate with no connections
				-- 2. Provides navigation bindings for remote directories
				-- 3. Provides keybinding to jump into a remote file's parent directory
				["*"] = require("distant.settings").chip_default(),
			})
		end,
	},

	-- https://github.com/jose-elias-alvarez/typescript.nvim
	-- "rmagatti/auto-session",
	-- "rmagatti/session-lens"
}
