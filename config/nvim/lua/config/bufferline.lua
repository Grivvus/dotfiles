require("bufferline").setup({
	options = {
		mode = "buffers",
		numbers = "ordinal",
		indicator = {
			style = "icon",
		},
		modified_icon = "●",
		max_name_length = 14,
		max_prefix_length = 12,
		tab_size = 14,
		diagnostics = false,
		show_buffer_icons = true,
		show_tab_indicators = true,
		persist_buffer_sort = true,
		separator_style = "thin",
		enforce_regular_tabs = false,
		always_show_bufferline = false,
	},
})
