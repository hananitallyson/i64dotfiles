local config_path = vim.fn.stdpath("config") .. "/config"
package.path = config_path .. "/?.lua;" .. config_path .. "/?/init.lua;" .. package.path

require("settings.plugins")
require("settings.options")
require("settings.colors")
require("settings.keymaps")
