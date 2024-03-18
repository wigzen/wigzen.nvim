return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    local neoTreeCommand = require 'neo-tree.command'
    vim.keymap.set('n', '<leader>fe', function()
      neoTreeCommand.execute { toggle = true }
    end, { desc = ' File Explorer ' })
  end,
}
