package.path = package.path
    .. ";" .. vim.fn.stdpath("config") .. "/config/?.lua"
    .. ";" .. vim.fn.stdpath("config") .. "/config/?/init.lua"

require("settings.options")
require("settings.plugins")
require("settings.keymaps")
require("themes.asimov").setup()

