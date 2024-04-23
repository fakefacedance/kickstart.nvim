return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd to harpoon list' })
    vim.keymap.set('n', '<leader><leader>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open harpoon window' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<S-h>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<S-l>', function()
      harpoon:list():next()
    end)
  end,
}
