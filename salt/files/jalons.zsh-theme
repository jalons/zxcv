local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"

orange="%F{166}"

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}


jobs_present() {
	symbols=()
	[[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}⚙"
	[[ -n "$symbols" ]] && echo "$symbols "
}

PROMPT='[$fg[red]%n%{$reset_color%}@%{$fg_bold[red]%}%m%{$reset_color%}]%{$fg_bold[green]%}%p %{$fg[cyan]%}$(collapse_pwd) %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}
$(jobs_present)${ret_status} %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
