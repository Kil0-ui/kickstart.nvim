return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim', { 'tpope/vim-fugitive' } },
  commit = 'e76cb03', -- Fixes harpoon not remembering custom key lookup.
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup({
      settings = {
        key = function()
          local key = vim.loop.cwd() .. '\\' .. vim.fn["FugitiveHead"]();
          print(key)
          if key == '' or key == nil then
            return vim.loop.cwd()
          end
          return key
        end
      }
    })
    -- REQUIRED

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<C-h>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-t>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-n>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-s>', function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end)
  end,
}
