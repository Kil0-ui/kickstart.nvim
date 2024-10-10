return {
  'vim-airline/vim-airline',
  dependencies = {
    'vim-airline/vim-airline-themes',
  },
  init = function()
    vim.g['airline#extensions#hunks#enabled'] = 0
    vim.g['airline#extensions#branch#enabled'] = 1
    vim.g.airline_theme = 'laederon'
    vim.g.airline_powerline_fonts = 1
  end,
}
