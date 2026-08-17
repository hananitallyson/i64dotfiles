vim.pack.add({
  {
    src = "https://github.com/nvim-treesitter/nvim-treesitter",
    version = "main",
  },
})

local nts = require("nvim-treesitter")

nts.install({
  "lua",
  "python",
  "javascript",
  "typescript",
  "html",
  "css",
  "json",
  "bash",
  "markdown",
  "c",
  "cpp",
  "c_sharp",
})

vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(args)
    if args.data.kind == "update" then
      nts.update()
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local lang = vim.treesitter.language.get_lang(args.match)

    if not lang then
      return
    end

    if not vim.treesitter.language.add(lang) then
      return
    end

    vim.treesitter.start(args.buf, lang)

    vim.bo[args.buf].indentexpr =
      "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
