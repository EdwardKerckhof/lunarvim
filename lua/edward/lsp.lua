lvim.format_on_save = true
lvim.lsp.diagnostics.virtual_text = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
	"java",
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "google_java_format", filetypes = { "java" } },
	{ command = "stylua", filetypes = { "lua" } },
	{
		command = "prettier",
		filetypes = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
			"css",
			"scss",
			"less",
			"html",
			"json",
			"yaml",
			"markdown",
			"graphql",
		},
	},
	{
		command = "eslint_d",
		filetypes = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
		},
	},
})

-- local clients_to_skip = {
-- 	"tsserver",
-- 	"volar",
-- 	"stylelint_lsp",
-- 	"jsonls",
-- }
-- lvim.lsp.on_attach_callback = function(client, bufnr)
-- 	for _, c in ipairs(clients_to_skip) do
-- 		if client.name == c then
-- 			client.server_capabilities.documentFormattingProvider = false
-- 		end
-- 	end
-- end

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{
		command = "eslint_d",
		filetypes = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
		},
	},
})
