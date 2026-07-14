vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim'
})

require('nvim-web-devicons').setup()

local asimov = require("settings.colors")

require('lualine').setup({
  options = {
    theme = asimov.lualine,
    component_separators = '',
    section_separators = '',
    globalstatus = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'filename' },
    lualine_c = { 'diff' },
    lualine_x = { 'filetype' },
    lualine_y = { 'encoding' },
    lualine_z = { 'location' },
  },
})
