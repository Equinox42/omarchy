-- Learn how to configure Hyprland: https://wiki.hypr.land/Configuring/Start/

-- Omarchy's bootstrap keeps path setup out of this user config.
dofile((os.getenv("OMARCHY_PATH") or "/usr/share/omarchy") .. "/default/hypr/bootstrap.lua")

-- Disable all Omarchy default bindings. Add your own in hypr/bindings.lua.
omarchy_default_bindings = false
--
-- Or disable only bindings for Omarchy's preinstalled apps/web apps while
-- keeping core window-manager bindings:
-- omarchy_preinstalled_bindings = false

-- Load Omarchy defaults.
require("default.hypr.omarchy")

-- Put your personal overrides in these files. They're loaded after Omarchy's
-- defaults so package updates can improve the defaults without rewriting your
-- ~/.config/hypr files.
require("hypr.monitors")
require("hypr.input")
require("hypr.bindings")
require("hypr.looknfeel")
require("hypr.autostart")
require("hypr.animation")

-- Toggle config flags dynamically.
require("default.hypr.toggles")

-- Assign apps to workspaces
o.window("zen", { workspace = "1" })
o.window("kitty", { workspace = "2"})
o.window("md.obsidian.Obsidian", { workspace = "3" })
o.window("discord", { workspace = "4" })
o.window("anki", { workspace = "5" })
o.window("org.gnome.Nautilus", { workspace = "6" })
o.window("Spotify", { workspace = "7" })
o.window("code", { workspace = "8" })
o.window("firefox", { workspace = "special" })

-- Assign workspaces to monitors
hl.workspace_rule({ workspace = "1", monitor = "DP-2", default = true })
hl.workspace_rule({ workspace = "8", monitor = "DP-2" })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "7", monitor = "eDP-1" })
