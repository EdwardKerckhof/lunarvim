lvim.builtin.which_key.mappings["b"] = { "<cmd>Telescope buffers<cr>", "Buffers" }
lvim.builtin.which_key.mappings["v"] = { "<cmd>vsplit<cr>", "vsplit" }
lvim.builtin.which_key.mappings["h"] = { "<cmd>nohlsearch<cr>", "nohl" }
lvim.builtin.which_key.mappings["q"] = { '<cmd>lua require("edward.functions").smart_quit()<CR>', "Quit" }
lvim.builtin.which_key.mappings["/"] = { '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', "Comment" }
lvim.builtin.which_key.mappings["c"] = { "<cmd>Bdelete!<CR>", "Close Buffer" }
lvim.builtin.which_key.mappings["gy"] = "Link"
lvim.builtin.which_key.mappings["r"] = {
	name = "Replace",
	r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
	w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
	f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}
lvim.builtin.which_key.mappings["d"] = {
	name = "Debug",
	b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint" },
	c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
	i = { "<cmd>lua require'dap'.step_into()<cr>", "Into" },
	o = { "<cmd>lua require'dap'.step_over()<cr>", "Over" },
	O = { "<cmd>lua require'dap'.step_out()<cr>", "Out" },
	r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Repl" },
	l = { "<cmd>lua require'dap'.run_last()<cr>", "Last" },
	u = { "<cmd>lua require'dapui'.toggle()<cr>", "UI" },
	x = { "<cmd>lua require'dap'.terminate()<cr>", "Exit" },
}
lvim.builtin.which_key.mappings["s"] = {
	name = "Search",
	b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
	c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
	f = { "<cmd>Telescope find_files<cr>", "Find files" },
	t = { "<cmd>Telescope live_grep<cr>", "Find Text" },
	s = { "<cmd>Telescope grep_string<cr>", "Find String" },
	h = { "<cmd>Telescope help_tags<cr>", "Help" },
	H = { "<cmd>Telescope highlights<cr>", "Highlights" },
	i = { "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", "Media" },
	l = { "<cmd>Telescope resume<cr>", "Last Search" },
	M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
	r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
	R = { "<cmd>Telescope registers<cr>", "Registers" },
	k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
	C = { "<cmd>Telescope commands<cr>", "Commands" },
}
lvim.builtin.which_key.mappings["g"] = {
	name = "Git",
	g = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle(12000)<cr>", "Lazygit" },
	j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
	k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
	l = { "<cmd>GitBlameToggle<cr>", "Blame" },
	p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
	r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
	R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
	s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
	u = {
		"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
		"Undo Stage Hunk",
	},
	o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
	b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
	c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
	d = {
		"<cmd>Gitsigns diffthis HEAD<cr>",
		"Diff",
	},
	G = {
		name = "Gist",
		a = { "<cmd>Gist -b -a<cr>", "Create Anon" },
		d = { "<cmd>Gist -d<cr>", "Delete" },
		f = { "<cmd>Gist -f<cr>", "Fork" },
		g = { "<cmd>Gist -b<cr>", "Create" },
		l = { "<cmd>Gist -l<cr>", "List" },
		p = { "<cmd>Gist -b -p<cr>", "Create Private" },
	},
}
lvim.builtin.which_key.mappings["t"] = {
	name = "Diagnostics",
	t = { "<cmd>TroubleToggle<cr>", "trouble" },
	w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
	d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
	q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
	l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
	r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}
lvim.builtin.which_key.mappings["l"] = {
	name = "LSP",
	a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
	c = { "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<cr>", "Get Capabilities" },
	d = { "<cmd>TroubleToggle<cr>", "Diagnostics" },
	w = {
		"<cmd>Telescope lsp_workspace_diagnostics<cr>",
		"Workspace Diagnostics",
	},
	f = { "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", "Format" },
	F = { "<cmd>LspToggleAutoFormat<cr>", "Toggle Autoformat" },
	i = { "<cmd>LspInfo<cr>", "Info" },
	h = { "<cmd>lua require('lsp-inlayhints').toggle()<cr>", "Toggle Hints" },
	H = { "<cmd>IlluminationToggle<cr>", "Toggle Doc HL" },
	I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
	j = {
		"<cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>",
		"Next Diagnostic",
	},
	k = {
		"<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>",
		"Prev Diagnostic",
	},
	v = { "<cmd>lua require('lsp_lines').toggle()<cr>", "Virtual Text" },
	l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
	o = { "<cmd>SymbolsOutline<cr>", "Outline" },
	q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
	r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
	R = { "<cmd>TroubleToggle lsp_references<cr>", "References" },
	s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
	S = {
		"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
		"Workspace Symbols",
	},
	t = { '<cmd>lua require("edward.functions").toggle_diagnostics()<cr>', "Toggle Diagnostics" },
	u = { "<cmd>LuaSnipUnlinkCurrent<cr>", "Unlink Snippet" },
}
lvim.builtin.which_key.mappings["n"] = {
	name = "Notes",
	c = { "<cmd>Telekasten show_calendar<cr>", "Calendar" },
	n = { "<cmd>Telekasten new_note<cr>", "Note" },
	f = { "<cmd>Telekasten find_notes<cr>", "Find" },
	F = { "<cmd>Telekasten find_daily_notes<cr>", "Find Journal" },
	j = { "<cmd>Telekasten goto_today<cr>", "Journal" },
	p = { "<cmd>Telekasten panel<cr>", "Panel" },
	t = { "<cmd>Telekasten toggle_todo<cr>", "Toggle Todo" },
}

lvim.builtin.which_key.mappings[";"] = nil
lvim.builtin.which_key.mappings["c"] = nil
lvim.builtin.which_key.mappings["L"] = nil
lvim.builtin.which_key.mappings["w"] = nil

local m_opts = {
	mode = "n", -- NORMAL mode
	prefix = "m",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
}

local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
	return
end

local m_mappings = {
	a = { "<cmd>silent BookmarkAnnotate<cr>", "Annotate" },
	c = { "<cmd>silent BookmarkClear<cr>", "Clear" },
	b = { "<cmd>silent BookmarkToggle<cr>", "Toggle" },
	l = { "<cmd>lua require('edward.bfs').open()<cr>", "Buffers" },
	j = { "<cmd>silent BookmarkNext<cr>", "Next" },
	k = { "<cmd>silent BookmarkPrev<cr>", "Prev" },
	x = { "<cmd>BookmarkClearAll<cr>", "Clear All" },
}

which_key.register(m_mappings, m_opts)
