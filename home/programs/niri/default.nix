{
  home.file."/home/whyoolw/.config/niri/config.kdl".text = ''
spawn-at-startup 		"/usr/bin/waybar"
spawn-at-startup 		"xwayland-satellite"
spawn-at-startup 		"swww-daemon"
spawn-at-startup 		"Pipewire"
spawn-at-startup 		"swaync"
spawn-at-startup 		"clipse" "-listen"
spawn-at-startup 		"clipse -listen"
spawn-at-startup 		"/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
spawn-at-startup 		"kdeconnect-indicator"

binds {
    Mod+E 			            { spawn "kitty" "sh" "-c" "ranger"; }
    Mod+Return 			        { spawn "kitty"; }
    Mod+Shift+D			        { spawn "rofi" "-show" "drun"; }
    Mod+D			            { spawn "fuzzel"; }
    Mod+V 			            { spawn "kitty" "--class" "clipse" "-e" "clipse";}
    Mod+Shift+C 		        { spawn "hyprpicker" "-a" "$(wl-paste)"; }
    Mod+P 			            { spawn "/home/whyoolw/.config/niri/off.sh"; }

    Mod+MouseForward  		    { focus-workspace 1 ; }
    Mod+MouseBack repeat=false	{ toggle-overview; }

    XF86MonBrightnessUp 	{ spawn "brightnessctl" "-q" "set" "2%+"; }
    XF86MonBrightnessDown 	{ spawn "brightnessctl" "-q" "set" "2%-"; }
    XF86AudioPlay 		    { spawn "playerctl" "play-pause"; }
    XF86AudioNext 		    { spawn "playerctl" "next"; }
    XF86AudioPrev 		    { spawn "playerctl" "previous"; }
    XF86AudioMute 		    { spawn "playerctl" "play-pause"; }
    XF86AudioRaiseVolume 	{ spawn "playerctl" "next"; }
    XF86AudioLowerVolume 	{ spawn "playerctl" "previous"; }
    Mod+Space 			    { spawn "wpctl" "set-mute" "@DEFAULT_AUDIO_SOURCE@" "toggle"; }
    Mod+W 			        { spawn "/home/whyoolw/.config/rofi/wallpaper/wallpaper.sh"; }
    Mod+Shift+W			    { spawn "/home/whyoolw/Documents/test/bash.bash"; }
    //Mod+A 			    { toggle-column-tabbed-display; }
    //Mod+Shift+A 		    { focus-window-down; }
    Mod+O 			        { spawn "/home/whyoolw/.config/rofi/sc/sc.sh"; }

    Mod+Shift+space 		{ toggle-window-floating; }
    Mod+Shift+Q 		{ close-window; }

    Mod+Left 			{ focus-column-left; }
    Mod+Down 			{ focus-window-down; }
    Mod+Up 			{ focus-window-up; }
    Mod+Right 			{ focus-column-right; }
    Mod+H 			{ focus-column-left; }
    Mod+J 			{ focus-window-down; }
    Mod+K 			{ focus-window-up; }
    Mod+L 			{ focus-column-right; }

    Mod+X 			{ toggle-overview; }
    Mod+Shift+Left 		{ move-column-left; }
    Mod+Ctrl+Down 		{ move-window-down; }
    Mod+Ctrl+Up 		{ move-window-up; }
    Mod+Shift+Right 		{ move-column-right; }
    Mod+Ctrl+H 			{ move-column-left; }
    Mod+Ctrl+J 			{ move-window-down; }
    Mod+Ctrl+K 			{ move-window-up; }
    Mod+Ctrl+L 			{ move-column-right; }

    Mod+Home 			{ focus-column-first; }
    Mod+End 			{ focus-column-last; }
    Mod+Ctrl+Home 		{ move-column-to-first; }
    Mod+Ctrl+End 		{ move-column-to-last; }

//  Mod+Shift+Left 		{ focus-monitor-left; }
//  Mod+Shift+Down 		{ focus-monitor-down; }
//  Mod+Shift+Up 		{ focus-monitor-up; }
//  Mod+Shift+Right 		{ focus-monitor-right; }

    Mod+Shift+Ctrl+Left 	{ move-column-to-monitor-left; }
    Mod+Shift+Ctrl+Down 	{ move-column-to-monitor-down; }
    Mod+Shift+Ctrl+Up 		{ move-column-to-monitor-up; }

    Mod+Page_Down 		{ focus-workspace-down; }
    Mod+Page_Up		 	{ focus-workspace-up; }
    Mod+Ctrl+Page_Down 		{ move-column-to-workspace-down; }
    Mod+Ctrl+Page_Up 		{ move-column-to-workspace-up; }

    Mod+1 			{ focus-workspace 1; }
    Mod+2 			{ focus-workspace 2; }
    Mod+3 			{ focus-workspace 3; }
    Mod+4 			{ focus-workspace 4; }
    Mod+5 			{ focus-workspace 5; }
    Mod+6 			{ focus-workspace 6; }
    Mod+7 			{ focus-workspace 7; }
    Mod+8 			{ focus-workspace 8; }

    Mod+Shift+1 		{ move-column-to-workspace 1; }
    Mod+Shift+2 		{ move-column-to-workspace 2; }
    Mod+Shift+3 		{ move-column-to-workspace 3; }
    Mod+Shift+4 		{ move-column-to-workspace 4; }
    Mod+Shift+5 		{ move-column-to-workspace 5; }
    Mod+Shift+6 		{ move-column-to-workspace 6; }
    Mod+Shift+7 		{ move-column-to-workspace 7; }
    Mod+Shift+8 		{ move-column-to-workspace 8; }

    Mod+WheelScrollDown 	{ focus-column-right; }
    Mod+WheelScrollUp 		{ focus-column-left; }
    Mod+Shift+WheelScrollDown 	{ move-column-right; }
    Mod+Shift+WheelScrollUp 	{ move-column-left; }
    Mod+Tab 			{ focus-workspace-previous; }

    Mod+R 			{ switch-preset-column-width; }
    Mod+Shift+F 		{ maximize-column; }
    Mod+F 			{ fullscreen-window; }
    Mod+C 			{ center-column; }
    Mod+Ctrl+C 			{ center-visible-columns; }
    Alt+Tab 			{ focus-column-right; }
    Alt+Shift+Tab 		{ focus-column-left; }

    Mod+Minus 			{ set-column-width "-10%"; }
    Mod+Equal 			{ set-column-width "+10%"; }

    Mod+Shift+Minus 		{ set-window-height "-10%"; }
    Mod+Shift+Equal 		{ set-window-height "+10%"; }

    Mod+Shift+S 		{ screenshot; }
    Alt+Print 			{ screenshot-window; }
    Mod+Shift+P 		{ quit; }
}
	screenshot-path "~/Pictures/Screenshot/%d-%m-%y %H-%M-%S.png"



window-rule {
    		match app-id="firefox$" title="^Picture-in-Picture$"
    		open-floating true
}

window-rule {
    		match app-id="zen$" title="^Picture-in-Picture$"
    		open-floating true
}

window-rule {
    		match app-id="zen$" title="^Картинка в картинке$"
    		open-floating true
    		default-floating-position x=32 y=32 relative-to="top-right"
//		block-out-from "screen-capture"
    		open-focused false
}

window-rule {
	match app-id="swaync-notification-window"
	open-focused false
}

window-rule {
    		match app-id="org.gnome.FileRoller"
    		open-floating true
        	default-column-width { fixed 812; }
    		default-window-height { fixed 900; }
    }

window-rule {
    		match app-id="thinkfan-ui"
            	default-column-width { fixed 550; }
    		default-window-height { fixed 500; }
    		open-floating true
}

window-rule{
    		match app-id="firefox$"
    		open-maximized true
}

window-rule{
    		match app-id="zen$"
    		open-maximized true
}

window-rule {
    		geometry-corner-radius 12
    		clip-to-geometry true
}

window-rule {
    		match app-id="org.gnome.Calculator"
    		default-column-width { fixed 4; }
    		default-window-height { fixed 4; }
    		open-floating true
}

window-rule {
		match app-id="hyprland-share-picker"
		open-floating true
		default-column-width { fixed 480; }
		default-window-height { fixed 270; }
}

environment {
    		DISPLAY ":0"
}

layout {
    		gaps 8
		center-focused-column "on-overflow"
	//	empty-workspace-above-first 
    		always-center-single-column


default-column-width {
        	proportion 0.5
}

    focus-ring {
         off
    }

    border {
        width 1
        active-color "#C2C3C5"
        inactive-color "#505050"
        urgent-color "#9b0000"

    }

    preset-column-widths {
        proportion 0.33333
        proportion 0.5
        proportion 0.66667
    }


    preset-window-heights {
        proportion 0.33333
        proportion 0.5
        proportion 0.66667
    }

}
input {
    keyboard {
	   xkb {
            layout "us,ru"
            options "grp:caps_toggle"
	}
}

mouse {
		accel-speed -0.4
        	accel-profile "flat"
}
touchpad {
	off
	tap
}

    		focus-follows-mouse max-scroll-amount="0%"
}

cursor {
    		xcursor-theme "Bibata-Modern-Ice"
    		xcursor-size 20
}

output "HDMI-A-1" {
    		mode "1920x1080@60"
		focus-at-startup
}

output "eDP-1" {
		mode "1920x1080@60"
}

layer-rule {
    		block-out-from "screencast"
}

hotkey-overlay {
    		skip-at-startup
}

layer-rule {
    		match namespace="^wallpaper$"
    		place-within-backdrop true
}

overview {
		backdrop-color "#232323"
	 	zoom 0.25
    		workspace-shadow {
        	off
    }
}

gestures {
    hot-corners {
         off
    }
}

'';
}
