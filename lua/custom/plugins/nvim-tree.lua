return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require('nvim-tree').setup {
      filters = {
        git_ignored = false,
      },
      view = {
        width = 48,
        centralize_selection = true,
      },
      hijack_cursor = true,
      update_focused_file = {
        enable = true,
      },
    }
  end,
}
