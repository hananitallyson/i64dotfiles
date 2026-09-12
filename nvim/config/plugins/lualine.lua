vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim'
})

require('nvim-web-devicons').setup()

local asimov = require("settings.colors")

local function emacs_modified()
  if vim.bo.modified then
    return "**"
  elseif vim.bo.modifiable == false then
    return "%%"
  else
    return "--"
  end
end

local function get_filename()
  local bufname = vim.api.nvim_buf_get_name(0)
  if vim.bo.filetype == 'oil' or bufname:match('^oil://') then
    local path = bufname:gsub('^oil://', '')
    return vim.fn.fnamemodify(path, ':.')
  end
  return vim.fn.fnamemodify(bufname, ':.')
end

require('lualine').setup({
  options = {
    theme = asimov.lualine,
    component_separators = '',
    section_separators = '',
    globalstatus = true,
  },
  sections = {
    lualine_a = { emacs_modified },
    lualine_b = { get_filename },
    lualine_c = { 'diff' },
    lualine_x = { 'filetype' },
    lualine_y = { 'encoding' },
    lualine_z = { 'location' },
  },
})