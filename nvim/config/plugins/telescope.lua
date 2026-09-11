vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
})

require("telescope").setup({
  defaults = {
    layout_strategy = "horizontal",

    sorting_strategy = "ascending",

    layout_config = {
      width = 0.95,
      height = 0.85,
      preview_width = 0.60,
      preview_cutoff = 0,
      prompt_position = "top",
      mirror = false,
    },

    borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
  },
})
