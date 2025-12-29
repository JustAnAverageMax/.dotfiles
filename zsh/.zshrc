export LS_COLORS="$(vivid generate gruvbox-dark)"

export ALACRITTY_CONFIG="/mnt/c/Users/user/AppData/Roaming/alacritty/alacritty.toml"
export ALACRITTY_THEMES="/mnt/c/Users/user/AppData/Roaming/alacritty/themes/themes/"
export ALACRITTY_THEME="gruvbox_dark"
export ALACRITTY_THEME_PATH="$ALACRITTY_THEMES/$ALACRITTY_THEME.toml"

export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"  
export FASTFETCH_CONFIG="$HOME/.config/fastfetch/config.jsonc"

# Удобный ls
alias ls='ls --color=auto'	# Для отображения LS_COLORS
alias l='ls -1' 		# Список в одну колонку
alias ll='ls -lahF'		# Список с деталями
alias la='ls -A'

# Алиасы для подключения к бд
alias quizwhiz-db-dev='mycli --defaults-file=~/.mysql-configs/dev/quizwhiz-dev.cnf'

alias bat='batcat'

eval "$(starship init zsh)"
fastfetch
