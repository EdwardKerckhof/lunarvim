vim.g.copilot_filetypes = { xml = false }
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })
