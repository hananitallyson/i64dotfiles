hl.config({
    animations = {
        enabled = true,
    },
})

hl.curve("fluid",  { type = "bezier", points = { {0.23, 1}, {0.32, 1} } })
hl.curve("linear", { type = "bezier", points = { {0, 0},    {1, 1}    } })

hl.animation({ leaf = "windows",       enabled = true,  speed = 0.4,  bezier = "fluid" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 0.4,  bezier = "fluid",  style = "popin 90%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 0.25, bezier = "linear", style = "popin 90%" })
hl.animation({ leaf = "border",        enabled = false, speed = 0,    bezier = "default" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 0.3,  bezier = "fluid" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 0.2,  bezier = "linear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.5,  bezier = "default", style = "slide" })
