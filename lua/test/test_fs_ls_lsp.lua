local client = vim.lsp.start_client {
  name = 'sf_ls',
  cmd = { 'C:/Projects/sf_ls/sf_ls' },
}

if not client then
  vim.notify 'sf_ls failed to start.'
  return
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'typescript',
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end,
})
