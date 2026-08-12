local wallpaper = os.getenv("HOME") .. "/Pictures/TSMC-WALLPAPER.jpg"

hl.exec_cmd("hyprpaper")
hl.exec_cmd("hyprctl hyprpaper wallpaper '," .. wallpaper .. ",cover'")
