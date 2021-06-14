# Colors Settings
autoload zsh/terminfo
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE GREY; do
    eval COLOR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval COLOR_LIGHT_$color='%{$fg[${(L)color}]%}'
    (( count = $count + 1 ))
done
COLOR_NO_COLOUR="%{$terminfo[sgr0]%}"

# Symbols Settings
COLOR_HBAR="─"

# Build Git Prompt
build_git_prompt() {
    git_info=$(git_prompt_info)
    git_status=$(git_prompt_status)
    git="$COLOR_RED"

    if [[ -n $git_info ]]; then
        git="$git$git_info"
        if [[ -n $git_status ]]; then
            git="$git$git_status"
        else
            git="$git"
        fi
        git="$git$COLOR_RED)"
    fi
    echo $git
}

# Elements
local pwd="$COLOR_CYAN%c%{$reset_color%}"
local c_return_code="%(?:$COLOR_GREEN✔:$COLOR_RED✖)%{$reset_color%}"
local return_code="%{$COLOR_MAGENTA%}[$c_return_code$COLOR_MAGENTA]%{$reset_color%}"
local symbol=" ➤➤%{$reset_color%}"

# Prompt
PROMPT='${pwd}$(build_git_prompt)${symbol} '

# Right Prompt
RPROMPT="${return_code}%{$reset_color%}"

# Git Settings
ZSH_THEME_GIT_PROMPT_PREFIX=" ($COLOR_MAGENTA\uE0A0 $COLOR_MAGENTA"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Git Status Settings
ZSH_THEME_GIT_PROMPT_ADDED="$COLOR_GREEN✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="$COLOR_BLUE✹"
ZSH_THEME_GIT_PROMPT_DELETED="$COLOR_RED✖"
ZSH_THEME_GIT_PROMPT_RENAMED="$COLOR_MAGENTA➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="$COLOR_YELLOW═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="$COLOR_CYAN✭"
