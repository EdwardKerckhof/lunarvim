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
		"zbirenbaum/copilot.lua",
		event = { "VimEnter" },
		config = function()
			vim.defer_fn(function()
				require("copilot").setup({
					plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
				})
			end, 100)
		end,
	},
	{ "zbirenbaum/copilot-cmp", after = { "copilot.lua", "nvim-cmp" } },
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},

	-- https://github.com/jose-elias-alvarez/typescript.nvim
	-- "rmagatti/auto-session",
	-- "rmagatti/session-lens"
}
