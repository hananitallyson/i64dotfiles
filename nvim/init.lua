package.path = package.path
  .. ";" .. vim.fn.stdpath("config") .. "/config/?.lua"
  .. ";" .. vim.fn.stdpath("config") .. "/config/?/init.lua"

require("settings.options")
require("settings.plugins")
require("settings.keymaps")
require("features.terminal")
require("themes.asimov").setup()
