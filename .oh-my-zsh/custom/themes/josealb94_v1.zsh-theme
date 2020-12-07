# COLORS
local c_user="$fg_bold[yellow]"
local c_hostname="$fg_bold[magenta]"
local c_pwd="$fg_bold[cyan]"
local c_return_code="%(?:%{$fg_bold[green]%}✔:%{$fg_bold[red]%}✖)%{$reset_color%}"
local c_symbol="$fg_bold[yellow]"

# ITEMS
local user="%{$c_user%}%n%{$reset_color%}"
local hostname="%{$c_hostname%}%M%{$reset_color%}"
local pwd="%{$c_pwd%}%c%{$reset_color%}"
local git='$(git_prompt_info)'
local return_code="[$c_return_code]%{$reset_color%}"
local symbol="%{$c_symbol%}➤➤%{$reset_color%}"

PROMPT="${user} ${pwd}${git} ${symbol} "
RPROMPT="${return_code} ${hostname}"

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX=" $FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[214]*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# hg settings
#ZSH_THEME_HG_PROMPT_PREFIX="$FG[075]($FG[078]"
#ZSH_THEME_HG_PROMPT_CLEAN=""
#ZSH_THEME_HG_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
#ZSH_THEME_HG_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"

# virtualenv settings
#ZSH_THEME_VIRTUALENV_PREFIX=" $FG[075]["
#ZSH_THEME_VIRTUALENV_SUFFIX="]%{$reset_color%}"