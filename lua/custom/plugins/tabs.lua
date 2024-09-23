local config = {
	vim.keymap.set('n', '<leader>fp', ':BufferLinePick<CR>', { desc = "Bu[f]ferLine [P]ick" }),
	vim.keymap.set('n', '<leader>fc', ':BufferLinePickClose<CR>', { desc = "Bu[f]ferLine pick [C]lose" }),
	vim.keymap.set('n', '<leader>fo', ':BufferLineCloseOthers<CR>', { desc = "Bu[f]ferLine close [O]thers" }),

}

return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		require("bufferline").setup(config)
	end
}
