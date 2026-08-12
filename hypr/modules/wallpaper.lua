local wallpaper = os.getenv("HOME") .. "/.config/hypr/wallpapers/TSMC-WALLPAPER.jpg"

hl.exec_cmd("hyprpaper")
hl.exec_cmd("hyprctl hyprpaper wallpaper '," .. wallpaper .. ",cover'")
