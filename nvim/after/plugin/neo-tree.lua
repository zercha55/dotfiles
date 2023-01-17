vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
vim.keymap.set("n", "<leader>pv", ":Neotree<Enter>")
require("neo-tree").setup{
	close_if_last_window = true,
	hide_root_node = true,
	popup_border_style = "rounded",
	enable_git_status = true,
	enable_diagnostics = true,
	window = {
		mappings = {
			["l"] = "open",
			["o"] = "open",
		},
	},
	filesystem = {
		filtered_items = {
			never_show = {
				".git",
				".DS_Store",
			},
		},
		follow_current_file = true,
		use_libuv_file_watcher = true,
		visible = true
	},
	source_selector = {
		winbar = true,
	},
	buffers = {
		follow_current_file = true
	}
}
