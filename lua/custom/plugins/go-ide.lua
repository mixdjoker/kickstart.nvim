return {
	-- A library for asynchronous IO in Neovim, deps for "ray-x/go"
	"nvim-neotest/nvim-nio",
	"ray-x/guihua.lua",
	-- A modern go neovim plugin based on treesitter, nvim-lsp and dap debugger
	"ray-x/go.nvim",
	dependencies = { -- optional packages
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("go").setup()
	end,
	event = { "CmdlineEnter" },
	ft = { "go", 'gomod' },
	build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}
