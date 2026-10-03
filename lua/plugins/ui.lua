return{
	{
		"folke/tokyonight.nvim",
		dependencies = {
			'nvim-lualine/lualine.nvim',
			'nvim-tree/nvim-web-devicons',
		},
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.cmd([[colorscheme tokyonight]])
			require('lualine').setup({
				options = { theme = 'tokyonight' }
			})
		end,
	},
}
