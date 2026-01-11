return {
	{
		"sainnhe/gruvbox-material",
		lazy = false, -- Load early
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_background = "medium" -- hard, medium, soft
			vim.g.gruvbox_material_foreground = "medium"
			vim.g.gruvbox_material_enable_italic = 1 -- enable italics
			vim.g.gruvbox_material_palette = "material" -- material, mix, original
			vim.cmd("colorscheme gruvbox-material")
		end,
	},
}
