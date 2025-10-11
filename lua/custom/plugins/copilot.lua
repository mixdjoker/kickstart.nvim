-- GitHub Copilot Plugin
-- return {
-- 	'github/copilot.vim',
-- }

-- ChatGPT Plugin
-- return {
--   'jackMort/ChatGPT.nvim',
--   event = 'VeryLazy',
--   dependencies = {
--     'nvim-lua/plenary.nvim',
--     'MunifTanjim/nui.nvim',
--     'nvim-telescope/telescope.nvim',
--   },
--   config = function()
--     require('chatgpt').setup {
--       api_key_cmd = 'echo $OPENAI_API_KEY',
--     }
--   end,
-- }

return {
  'zbirenbaum/copilot.lua',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = '<C-j>',
          accept_word = false,
          accept_line = false,
          next = '<C-l>',
          prev = '<C-h>',
          dismiss = '<C-]>',
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        gitcommit = true,
        ['*'] = true, -- включить везде
      },
    }
  end,
}
