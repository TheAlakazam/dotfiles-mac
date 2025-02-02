return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		config = function()
			require("oil").setup({})
			vim.keymap.set("n", "<leader><Tab>", function()
				vim.cmd((vim.bo.filetype == "oil") and "bd" or "Oil")
			end, { noremap = true, silent = true })
		end,
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	},
}
