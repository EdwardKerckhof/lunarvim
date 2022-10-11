-- Additional Plugins
lvim.plugins = {
	"nvim-treesitter/playground",
	"mfussenegger/nvim-jdtls",
	"karb94/neoscroll.nvim",
	"j-hui/fidget.nvim",
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	"christianchiarulli/harpoon",
	"MattesGroeger/vim-bookmarks",
	"NvChad/nvim-colorizer.lua",
	"ghillb/cybu.nvim",
	"moll/vim-bbye",
	"folke/todo-comments.nvim",
	"windwp/nvim-spectre",
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
		"tzachar/cmp-tabnine",
		run = "./install.sh",
		requires = "hrsh7th/nvim-cmp",
		event = "InsertEnter",
	},
	{
		"zbirenbaum/copilot.lua",
		event = { "VimEnter" },
		config = function()
			vim.defer_fn(function()
				require("copilot").setup({
					plugin_manager_path = os.getenv("LUNARVIM_RUNTIME_DIR") .. "/site/pack/packer",
				})
			end, 100)
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		after = { "copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end,
	},
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	"kevinhwang91/nvim-bqf",
	"is0n/jaq-nvim",
	"hrsh7th/cmp-emoji",
	"TimUntersberger/neogit",
	"monaqa/dial.nvim",
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
	{
		"nacro90/numb.nvim",
		config = function()
			require("numb").setup({
				hide_relativenumbers = true,
			})
		end,
	},
	"ggandor/lightspeed.nvim",
	{
		"tpope/vim-surround",
	},
}
