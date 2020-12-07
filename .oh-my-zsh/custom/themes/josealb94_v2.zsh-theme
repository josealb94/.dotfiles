###
    # See if we can use colors.

autoload zsh/terminfo
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE GREY; do
    eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
    (( count = $count + 1 ))
done
PR_NO_COLOUR="%{$terminfo[sgr0]%}"


PR_SET_CHARSET=""
PR_HBAR="─"
PR_ULCORNER="┌"
PR_LLCORNER="└"
PR_LRCORNER="┘"
PR_URCORNER="┐"


# COLORS
local c_return_code="%(?:%{$PR_GREEN%}✔:%{$PR_RED%}✖)%{$reset_color%}"

# Elements
local user="$PR_LIGHT_GREEN%n%{$reset_color%}"
local hostname="$PR_LIGHT_GREEN%M%{$reset_color%}"
local date="$PR_YELLOW%D{%a,%b%d}"
local time="$PR_YELLOW%D{%H:%M:%S}"
local pwd="$PR_CYAN%c%{$reset_color%}"
local git='$PR_RED$PR_HBAR$PR_HBAR➤$(git_prompt_info)$(git_prompt_status)'
local return_code="%{$PR_MAGENTA%}[$c_return_code$PR_MAGENTA]%{$reset_color%}"
local symbol="$PR_RED➤➤%{$reset_color%}"


PROMPT="$PR_RED$PR_ULCORNER$PR_HBAR(${user}$PR_RED@${hostname}$PR_RED)${git}\

$PR_RED$PR_LLCORNER$PR_HBAR(${pwd}$PR_RED)$PR_HBAR${symbol} "
RPROMPT="${return_code}$PR_RED$PR_HBAR($date $time$PR_RED)$PR_HBAR$PR_LRCORNER%{$reset_color%}"

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭"

# hg settings
#ZSH_THEME_HG_PROMPT_PREFIX="$FG[075]($FG[078]"
#ZSH_THEME_HG_PROMPT_CLEAN=""
#ZSH_THEME_HG_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
#ZSH_THEME_HG_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"

# virtualenv settings
#ZSH_THEME_VIRTUALENV_PREFIX=" $FG[075]["
#ZSH_THEME_VIRTUALENV_SUFFIX="]%{$reset_color%}"
