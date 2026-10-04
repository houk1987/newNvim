return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("lint").linters_by_ft = {
			python = { "ruff", "mypy" },
			lua = { "luacheck" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})

		vim.diagnostic.config({
			virtual_text = true, -- 在代码内显示虚拟文本（行尾提示）
			signs = true, -- 左侧边栏的图标标记
			underline = true, -- 代码下划线
			update_in_insert = false, -- 插入模式下不实时更新，避免卡顿
		})
	end,
}
