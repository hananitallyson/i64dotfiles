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

