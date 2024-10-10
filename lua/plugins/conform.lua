return { -- Autoformat
  'stevearc/conform.nvim',
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    formatters = { 'stylua', 'prettier', 'prettierd' },
  },
}
