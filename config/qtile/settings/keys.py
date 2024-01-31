# Antonio Sarosi
# https://youtube.com/c/antoniosarosi
# https://github.com/antoniosarosi/dotfiles

# Qtile keybindings

from libqtile.config import Key
from libqtile.command import lazy


mod = "mod4"

keys = [Key(key[0], key[1], *key[2:]) for key in [
    # ------------ Window Configs ------------

    # Switch between windows in current stack pane
    ([mod], "Down", lazy.layout.down()),
    ([mod], "Up", lazy.layout.up()),
    ([mod], "Left", lazy.layout.left()),
    ([mod], "Right", lazy.layout.right()),

    # Change window sizes (MonadTall)
    ([mod, "shift"], "Left", lazy.layout.grow()),
    ([mod, "shift"], "Right", lazy.layout.shrink()),

    # Toggle floating
    ([mod, "shift"], "f", lazy.window.toggle_floating()),

    # Move windows up or down in current stack
    ([mod, "shift"], "Down", lazy.layout.shuffle_down()),
    ([mod, "shift"], "Up", lazy.layout.shuffle_up()),

    # Change windows focus
    ([mod], "space", lazy.layout.next()),

    # Toggle between different layouts as defined below
    ([mod], "Tab", lazy.next_layout()),
    ([mod, "shift"], "Tab", lazy.prev_layout()),

    # Kill window
    ([mod], "q", lazy.window.kill()),

    # Switch focus of monitors
    ([mod], "period", lazy.next_screen()),
    ([mod], "comma", lazy.prev_screen()),

    # Restart Qtile
    ([mod, "shift"], "r", lazy.restart()),

    ([mod, "control"], "q", lazy.shutdown()),
    ([mod], "r", lazy.spawncmd()),

    # ------------ App Configs ------------

    # Menu
    ([mod], "d", lazy.spawn("rofi -show drun")),

    # Window Nav
    ([mod, "shift"], "d", lazy.spawn("rofi -show")),

    # Browser
    ([mod], "F1", lazy.spawn("brave-browser-stable")),

    # File Explorer
    ([mod], "e", lazy.spawn("pcmanfm")),
    ([mod], "F4", lazy.spawn("alacritty -e fff")),

    # Terminal
    ([mod], "Return", lazy.spawn("alacritty")),

    # Editor
    ([mod], "s", lazy.spawn("code-oss")),

    # Screenshot
    ([mod], "Print", lazy.spawn("scrot")),
    ([mod, "shift"], "Print", lazy.spawn("scrot -s")),

    # ------------ Hardware Configs ------------

    # Volume
    ([], "XF86AudioLowerVolume", lazy.spawn(
        "pactl set-sink-volume @DEFAULT_SINK@ -2%"
    )),
    ([], "XF86AudioRaiseVolume", lazy.spawn(
        "pactl set-sink-volume @DEFAULT_SINK@ +2%"
    )),
    ([], "XF86AudioMute", lazy.spawn(
        "pactl set-sink-mute @DEFAULT_SINK@ toggle"
    )),
]]
