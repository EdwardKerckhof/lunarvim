require("edward.lsp.languages.js-ts")
require("edward.lsp.languages.emmet")
require("lvim.lsp.manager").setup("tailwindcss", {
	filetypes = { "html", "vue", "astro", "typescriptreact", "javascriptreact" },
})

lvim.format_on_save = true
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.diagnostics.float.focusable = true

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "google_java_format", filetypes = { "java" } },
	{ command = "stylua", filetypes = { "lua" } },
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
