return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'folke/trouble.nvim' },
  extensions = { 'fugitive' },
  config = function()
    local lualine = require('lualine');
    lualine.setup({
      options = {
        theme = 'ayu_dark',
      },
      sections = {
        lualine_b = { 'FugitiveHead', 'diff', 'diagnostics' },
      }
    })
  end,
  opts = function(_, opts)
    local trouble = require("trouble")
    local symbols = trouble.statusline({
      mode = "lsp_document_symbols",
      groups = {},
      title = false,
      filter = { range = true },
      format = "{kind_icon}{symbol.name:Normal}",
      -- The following line is needed to fix the background color
      -- Set it to the lualine section you want to use
      hl_group = "lualine_c_normal",
    })
    opts.sections = { lualine_c = {} }
    table.insert(opts.sections.lualine_c, {
      symbols.get,
      cond = symbols.has,
    })
  end,
}
