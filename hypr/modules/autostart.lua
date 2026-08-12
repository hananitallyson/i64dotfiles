local wallpaper = os.getenv("HOME") .. "/.config/hypr/wallpapers/TSMC.jpg"

hl.on("hyprland.start", function () 
  hl.exec_cmd("waybar")
  hl.exec_cmd("hyprctl setcursor XCursor-Pro-Light 28")
  hl.exec_cmd("rm -f \"$HOME/.cache/cliphist/db\"")
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("hyprctl hyprpaper wallpaper '," .. wallpaper .. ",cover'")
end)
