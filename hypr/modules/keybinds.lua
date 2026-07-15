local MOD = "SUPER"
local terminal = "kitty"
local fileManager = "thunar"
local menu = "tofi-drun --drun-launch=true"
local clipboard = "cliphist list | tofi | cliphist decode | wl-copy"
local reload = "hyprctl reload && pkill waybar && waybar &"
local power = "~/.config/hypr/scripts/power.sh"
local screenshot = "~/.config/hypr/scripts/screenshot.sh"

hl.bind(MOD .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(MOD .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(MOD .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(MOD .. " + V", hl.dsp.exec_cmd(clipboard))
hl.bind(MOD .. " + R", hl.dsp.exec_cmd(reload))
hl.bind(MOD .. " + SHIFT + P", hl.dsp.exec_cmd(screenshot))
hl.bind(MOD .. " + Escape", hl.dsp.exec_cmd(power))

hl.bind(MOD .. " + Q", hl.dsp.window.close())
hl.bind(MOD .. " + W", hl.dsp.window.float({ action = "toggle" }))
hl.bind(MOD .. " + F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(MOD .. " + T", hl.dsp.layout("togglesplit"))

hl.bind(MOD .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(MOD .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(MOD .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(MOD .. " + J", hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
    local key = i % 10
    hl.bind(MOD .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(MOD .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(MOD .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(MOD .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(MOD .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(MOD .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

hl.bind(MOD .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(MOD .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(MOD .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(MOD .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true }
)
hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true }
)
hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true, repeating = true }
)
hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
