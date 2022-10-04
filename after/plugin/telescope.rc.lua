local ok, nvim_telescope = pcall(require, 'telescope')
if (not ok) then return end

nvim_telescope.setup{
  defaults = {},
  pickers = {},
  extensions = {
    file_browser = {
      theme = 'dropdown',
      hijack_netrw = true,
      previewer = false,
      path = '%:p:h',
      hidden = true,
      initial_mode = 'normal',
      grouped = true,
      cwd = vim.fn.expand('%:p:h')
    }
  }
}

nvim_telescope.load_extension 'file_browser'

vim.api.nvim_set_keymap(
  'n',
  'fb',
  ':Telescope file_browser<CR>',
  { noremap = true }
)
