{pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;
    extraConfig = ''
monitor=eDP-1, 1920x1080@60, 0x0,1
monitor=HDMI-A-1, 1920x1080@60, 1920x0, 1
monitor=eDP-1, 1920x1080@60, 0x0,1
monitor=HDMI-A-1, 1920x1080@60, -1920x0, 1
#monitor=DP-2, 1920x1080@60, 0x0, 1
exec-once = waybar
exec-once = swaync
#exec-once = wl-paste -t text --watch clipman store --max-items=60 --histpath="~/.local/share/clipman.json"
exec-once =  wl-paste --watch cliphist store
exec-once = /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 
exec-once = swww init
exec-once = swww img /home/whyoolw/Pictures/wallpaper/0current.png
#exec-once = kdeconnect-indicator
exec = hyprctl keyword '$LAPTOP_KB_ENABLED' "false" -r
exec-once = com.spotify.Client
#exec-once = thinkfan-ui
exec-once = [workspace special as silent; tiled] kitty -e btop
exec-once = [workspace special as silent; tiled] kitty -e watch -n 1 nvidia-smi
exec-once = hyprctl setcursor Bibata-Modern-Ice 24


#env = HYPRCURSOR_THEME,Bibata-Modern-Ice
#env = HYPRCURSOR_SIZE,24
#env = XCURSOR_THEME, Bibata-Modern-Ice
#env = XCURSOR_SIZE,24
#env = GTK_THEME,RosePine-Main-BL-LB


#source = ./rule.conf
#source = ./bind.conf

cursor {
  no_hardware_cursors = true
}

#render:explicit_sync=0

input {
    	kb_layout = us,ru
    	kb_options = grp:caps_toggle
    	follow_mouse = 1
touchpad {
        natural_scroll = no

    }
    	sensitivity = -0.9
    	#sensitivity = -0.1
}

device {
name = elan-trackpoint 
    sensitivity = -0.5
}

general {
	gaps_in = 5
	gaps_out = 10
	border_size = 1
	col.active_border = rgba(C1C1C1ff)
	col.inactive_border = rgba(333333ff)
	layout = dwindle
}

misc {
    middle_click_paste = false
}



decoration {
    blur {
        enabled = true
        size = 4
        passes = 5
        new_optimizations = false
        ignore_opacity = on
        xray = false
        brightness = 0.9
	ignore_opacity = true
    } 
    	rounding = 16
    	drop_shadow = yes
	shadow_range = 30
    	shadow_render_power = 4
    	col.shadow = rgba(00000080)
	#dim_inactive = 1
	#dim_strength = 0.2
}

animations {
    	enabled = yes
    	bezier = myBezier, 0.05, 0.9, 0.1, 1.00
    	animation = windows, 1, 4, myBezier, popin 75%
    	animation = border, 1, 3, myBezier
    	animation = fade, 1, 3, myBezier
    	animation = workspaces, 1, 3, default, slidefade
}


dwindle {

    	pseudotile = yes #  
    	preserve_split = yes # 
    }

master {
   
    	#new_is_master = 1
    	#no_gaps_when_only = true
}


gestures {
   
    	workspace_swipe = on
}

$LAPTOP_KB_ENABLED = true
	device {
  	name = elan-touchpad
	enabled = $LAPTOP_KB_ENABLED
}


$mainMod = SUPER

bind = $mainMod , W, exec, /home/whyoolw/.config/rofi/wallpaper/wallpaper.sh
bind = $mainMod SHIFT, Q, killactive,
bind = $mainMod SHIFT, SPACE, togglefloating, 
bind = $mainMod, RETURN, exec, kitty 
bind = $mainMod SHIFT, RETURN, exec,[tiled] kitty
bind = $mainMod, E, exec, kitty sh -c ranger
bind = $mainMod SHIFT, E, exec, nemo
bind = $mainMod, F, fullscreen
bind = $mainMod, D, exec, rofi -show drun
#bind = $mainMod, D, exec, anyrun
bind = $mainMod, I, exec, rofi -show  emoji -show emoji
bind=$mainMod,C,exec,hyprpicker -a && -u critical -t 4000 "$(wl-paste)"
bind = $mainMod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy
#bind = $mainMod, V, exec, rofi -modi clipboard:/home/whyoolw/cliphist -show clipboard -show-icons
#bind = $mainMod, V, exec, clipman pick --tool="rofi" --tool-args="-show drun -monitor 1" --max-items=30
bind = $mainMod SHIFT, S, exec,  hyprshot -m region -z
bind = $mainMod, P, exec, .config/rofi/powermenu/powermenu.sh
bind = $mainMod, SPACE, exec, sh -c "if pactl list sources | grep -q 'Mute: yes'; then pactl set-source-mute @DEFAULT_SOURCE@ toggle && notify-send 'Micro ON'; else pactl set-source-mute @DEFAULT_SOURCE@ toggle && notify-send 'Micro OFF'; fi"
#bind = $mainMod, L, exec, hyprlock
bind = $mainMod, O, exec,  hyprctl keyword '$LAPTOP_KB_ENABLED' "false" -r
bind = $mainMod SHIFT, O, exec,  hyprctl keyword '$LAPTOP_KB_ENABLED' "true" -r
bind = $mainMod, S, exec, swaync-client -t -sw
bind = $mainMod SHIFT, R, exec, pkill waybar && hyprctl dispatch exec waybar

bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10


bind = $mainMod, mouse_down, workspace, e-1
bind = $mainMod, mouse_up, workspace, e+1
bind = $mainMod,Tab,workspace, e+1          
bind = $mainMod SHIFT ,Tab,workspace, e-1   
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow
bind = $mainMod CTRL, left, resizeactive,-50 0
bind = $mainMod CTRL, right, resizeactive,50 0
bind = $mainMod CTRL, up, resizeactive,0 -50
bind = $mainMod CTRL, down, resizeactive,0 50

bind = $mainMod, A, togglespecialworkspace, as
bind = $mainMod SHIFT, A, movetoworkspace, special:as

bind = $mainMod, Z, togglespecialworkspace, zs
bind = $mainMod SHIFT, Z, movetoworkspace, special:zs

bind = $mainMod, X, togglespecialworkspace, xs
bind = $mainMod SHIFT, X, movetoworkspace, special:xs

bind = $mainMod CTRL, A, movetoworkspace,e+0
bind = $mainMod CTRL, X, movetoworkspace,e+0
bind = $mainMod CTRL, Z, movetoworkspace,e+0

bind = ALT, Tab, cyclenext, 
bind = ALT, Tab, bringactivetotop, 
bind = ALT SHIFT, Tab, cyclenext, prev
bind = ALT SHIFT, Tab, bringactivetotop, 
#binde=, XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
#binde=, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
binde = , XF86AudioRaiseVolume, exec, playerctl next
binde = , XF86AudioLowerVolume, exec, playerctl previous
binde = , XF86AudioMute, exec, play-pause
binde = , XF86MicMute, exec, kitty
bind=, XF86AudioPlay, exec, playerctl play-pause
bind=, XF86AudioPause, exec, playerctl play-pause
bind=, XF86AudioNext, exec, playerctl next
bind=, XF86AudioPrev, exec, playerctl previous
bind=,XF86MonBrightnessDown,exec,brightnessctl set 5%-
bind=,XF86MonBrightnessUp,exec,brightnessctl set +5%

bind = $mainMod, right, moveactive, 50 0
bind = $mainMod, left, moveactive, -50 0
bind = $mainMod, up, moveactive, 0 -50
bind = $mainMod, down, moveactive, 0 50

bind = $mainMod SHIFT, right, resizeactive, 10 0
bind = $mainMod SHIFT, left, resizeactive, -10 0
bind = $mainMod SHIFT, up, resizeactive, 0 -10
bind = $mainMod SHIFT, down, resizeactive, 0 10

bind = $mainMod , h, movewindow, l
bind = $mainMod , l, movewindow, r
bind = $mainMod , k, movewindow, u 
bind = $mainMod , j, movewindow, d



windowrule=float,Rofi
windowrule=float,pavucontrol
windowrule=float,imv
windowrule=float,mpv
windowrule=float,veracrypt
windowrule=float,kitty
windowrule=float,nemo
windowrule=center,mpv
windowrule=pin,org.gnome.Calculator
windowrule=size 1536 864, mpv
windowrule=float,org.gnome.FileRoller
windowrule=float,file-roller
windowrule=size 1000 600, nemo
windowrule=size 1000 600, kitty

layerrule = blur, waybar

windowrulev2 = float, class:^(firefox)$, title:^(Picture-in-Picture)$
windowrulev2 = pin,   class:^(firefox)$, title:^(Picture-in-Picture)$
windowrulev2 = size 600 350, class:^(firefox)$, title:^(Picture-in-Picture)
windowrulev2 = move 68% 2%, class:^(firefox)$, title:^(Picture-in-Picture)


#windowrule=size 715 1020,org.telegram.desktop
#windowrule=move 1200 10 ,org.telegram.desktop
#windowrule=size 1165 1020, vesktop
#windowrule=move 20 10,vesktop
windowrulev2 = float,class: Proton
#windowrule = workspace 2 silent,org.telegram.desktop
#windowrule = workspace 2 silent,vesktop
#windowrule = workspace 6 silent, title: anime-cli
#windowrule = workspace special:x,waypaper-engine

windowrule = workspace special:xs silent, Spotify

#layerrule = blur, swaync-control-center
#layerrule = blur, swaync-notification-window
#layerrule = ignorezero, swaync-control-center
#layerrule = ignorezero, swaync-notification-window

#layerrule = ignorealpha 0.1, swaync-control-center
#layerrule = ignorealpha 0.1, swaync-notification-window

workspace = special:as,gapsin:00,gapsout:70
workspace = special:xs,gapsin:50,gapsout:70
'';
  };
}
