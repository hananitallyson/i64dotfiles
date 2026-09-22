vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.fn.system({
      "kitten", "@", "set-spacing",
      "padding-left=0",
      "padding-right=0",
      "padding-top=0",
      "padding-bottom=0",
    })
  end,
})

vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.fn.system({
      "kitten", "@", "set-spacing",
      "padding-left=20",
      "padding-right=20",
      "padding-top=12",
      "padding-bottom=12",
    })
  end,
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.fn.system({ "kitten", "@", "set-font-size", "32" })
  end,
})

vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.fn.system({ "kitten", "@", "set-font-size", "0" })
  end,
})

vim.api.nvim_create_autocmd({"BufWritePre"}, {
  group = vim.api.nvim_create_augroup('UserOnSave', {}),
  pattern = '*',
  callback = function()
    local n_lines = vim.api.nvim_buf_line_count(0)
    local last_nonblank = vim.fn.prevnonblank(n_lines)
    if last_nonblank <= n_lines then vim.api.nvim_buf_set_lines(0,
      last_nonblank, n_lines, true, { '' })
    end
  end,
})
