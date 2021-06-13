# Colors Settings
autoload zsh/terminfo
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE GREY; do
    eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
    (( count = $count + 1 ))
done
PR_NO_COLOUR="%{$terminfo[sgr0]%}"

# Symbols Settings
PR_HBAR="─"

# Elements
local pwd="$PR_CYAN%c%{$reset_color%}"
local git='$PR_RED$(git_prompt_info)$(git_prompt_status)'
local c_return_code="%(?:%{$PR_GREEN%}✔:%{$PR_RED%}✖)%{$reset_color%}"
local return_code="%{$PR_MAGENTA%}[$c_return_code$PR_MAGENTA]%{$reset_color%}"
local symbol="$PR_RED) ➤➤%{$reset_color%}"

# Prompt
PROMPT="${pwd}${git}${symbol} "

# Right Prompt
RPROMPT="${return_code}%{$reset_color%}"

# Git Settings
ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[magenta]%}\uE0A0 %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Git Status Settings
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭"

