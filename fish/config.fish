# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end

function fish_prompt
    echo -e (set_color white) (prompt_pwd)
    echo -n (set_color 777777) '$ '
end

export EDITOR='nvim'

# set -g fish_key_bindings fish_vi_key_bindings

# Commands
abbr la 'ls -a'
abbr ll 'ls -l'
abbr lla 'ls -la'
abbr lg 'ls -a | grep'
abbr cl 'clear'
abbr rm 'rm -r'
abbr kipz 'killall -q polybar zscroll' 
abbr cd... 'cd ..; cd ..'
abbr mk 'mkdir'

# Apps
abbr nf 'neofetch --ascii ~/.config/neofetch/skull.txt'
abbr nv 'nvim'
abbr hx 'helix'
abbr setbr 'setxkbmap br'
abbr b 'btop'
abbr pipes 'pipes.sh'
abbr mine '~/.config/Scripts/mine.sh'
abbr nnf 'neofetch'
abbr rng 'ranger'

# abbr vga '~/.config/Scripts/wall.sh'
abbr aquarium 'asciiquarium -t'
abbr wttr 'curl https://wttr.in'
abbr msk 'musikcube'

# Window managers
abbr i3c 'nvim ~/.config/i3/config'
abbr awmc 'nvim ~/.config/awesome/rc.lua'
abbr xmoc 'nvim ~/.config/xmonad/xmonad.hs'
abbr dwmc 'cd ~/.config/dwm'
abbr niric 'nvim ~/.config/niri/config.kdl'
abbr swayc 'nvim ~/.config/sway/config'
abbr qtilec 'nvim ~/.config/qtile/config.py'
abbr hypr 'nvim ~/.config/hypr/hyprland.conf'
abbr riverc 'nvim ~/.config/river/init'
abbr sxhkdrc 'nvim ~/.config/sxhkd/sxhkdrc'
abbr bspwmrc 'nvim ~/.config/bspwm/bspwmrc'

# Shells
abbr zshc 'nvim ~/.zshrc'
abbr bashc 'nvim ~/.bashrc'
abbr fishc 'nvim ~/.config/fish/config.fish'

# Terminals
abbr toml 'nvim ~/.config/alacritty/alacritty.toml'
abbr stc 'cd ~/.config/st'
abbr ghosttyc 'nvim ~/.config/ghostty/config'
abbr kittyc 'nvim ~/.config/kitty/kitty.conf'

# Config apps
abbr nvc 'cd ~/.config/nvim'
abbr picomc 'nvim ~/.config/picom/picom.conf'
abbr polyc 'cd ~/.config/polybar'
abbr dunstrc 'nvim ~/.config/dunst/dunstrc'
abbr rngc 'nvim ~/.config/ranger/rc.conf'
abbr rofic 'cd ~/.config/rofi/'
abbr neoc 'nvim ~/.config/neofetch/config.conf'

# Other folders
abbr scripts 'cd ~/.config/Scripts'
abbr css 'cd ~/.zen/67g8uwvc.Default\ \(alpha\)/chrome/'

# Paman
abbr pac-s 'sudo pacman -S'
abbr pac-ss 'pacman -Ss'
abbr pac-r 'sudo pacman -Rs'
abbr pac-n 'sudo pacman -Rns'
abbr pac-q 'pacman -Q'
abbr pac-qg 'pacman -Q | grep'
abbr pyu 'sudo pacman -Syu'

# Yay
abbr ys 'yay -S'
abbr yss 'yay -Ss'
abbr yr 'yay -Rs'
abbr yyu 'yay -Syu'

# Flatpak
abbr fl 'flatpak install flathub'
abbr fs 'flatpak search'
abbr fls 'flatpak list --app'
abbr fu 'flatpak uninstall'
abbr fp 'flatpak update'
abbr fr 'flatpak run'


# pnpm
set -Ux PNPM_HOME "/home/edu/.local/share/pnpm"
if not contains $PNPM_HOME $PATH
    set -Ux PATH $PNPM_HOME $PATH
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

fish_add_path /home/edu/.spicetify

set fish_greeting ""
