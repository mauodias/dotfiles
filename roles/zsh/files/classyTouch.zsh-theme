# ZSH Theme - classyTouch
# Author: Yaris Alex Gutierrez <yarisgutierrez@gmail.com>
# Prompt is the Oh-my-zsh version of user Graawr's 'Classy Touch' themes on http://dotshare.it

local current_dir='%{$reset_color%}[%~% ]'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="
%(?,%{$fg[green]%}┌─╼ ${current_dir}%{$reset_color%} ${git_branch}
%{$fg[green]%}└╼%{$reset_color%} ,%{$fg[red]%}┌─╼ ${current_dir}%{$reset_color%} ${git_branch}
%{$fg[red]%}└╼%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="] %{$reset_color%}"
