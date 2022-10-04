local ok, nvim_bufferline = pcall(require, 'bufferline')
if (not ok) then return end

nvim_bufferline.setup {
  options = {
    mode = 'tabs',
    show_close_icons = false,
    show_buffer_close_icons = false
  }
}
