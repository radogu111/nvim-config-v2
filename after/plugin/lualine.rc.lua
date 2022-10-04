local ok, nvim_lualine = pcall(require, 'lualine')
if (not ok) then return end

nvim_lualine.setup {
  options = {
    icons_enabled = false,
    theme = 'solarized_dark',
  }
}
