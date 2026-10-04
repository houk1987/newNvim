return {
	{
		"folke/tokyonight.nvim",
		dependencies = {
			"nvim-lualine/lualine.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.cmd([[colorscheme tokyonight]])
			require("lualine").setup({
				options = { theme = "tokyonight" },
			})
		end,
	},

	{
		"https://github.com/nvim-tree/nvim-tree.lua",
		config = function()
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			vim.opt.termguicolors = true

			require("nvim-tree").setup()

			local config = {
				sort = {
					sorter = "case_sensitive",
				},
				view = {
					width = 30,
				},
				renderer = {
					group_empty = true,
				},
				filters = {
					dotfiles = true,
				},
			}
			require("nvim-tree").setup(config)
		end,
	},
}
