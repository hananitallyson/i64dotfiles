-- Informa ao Lua para buscar os arquivos dentro da pasta 'modules'
package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/hypr/modules/?.lua"

require("monitors")
require("environment")
require("autostart")
require("input")
require("devices")
require("layout")
require("decoration")
require("animations")
require("miscellaneous")
require("keybinds")
require("rules")
