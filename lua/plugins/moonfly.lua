return {
  'bluz71/vim-moonfly-colors',
  name = 'moonfly',
  lazy = false,
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'moonfly'
    vim.g.moonflyNormalFloat = true
    vim.g.moonflyTransparent = true
    vim.g.moonflyVirtualTextColor = true
    vim.g.moonflyUndercurls = false
  end,
}
