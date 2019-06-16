#!/usr/bin/env bash

. "$BASH_IT/themes/minimal/minimal.base.bash"

# Python venv
PYTHON_VENV_CHAR=${POWERLINE_PYTHON_VENV_CHAR:="[p] "}
CONDA_PYTHON_VENV_CHAR=${POWERLINE_CONDA_PYTHON_VENV_CHAR:="[c] "}
PYTHON_VENV_THEME_PROMPT_COLOR="${purple}"

SCM_THEME_PROMPT_PREFIX="${cyan}(${green}"
SCM_THEME_PROMPT_SUFFIX="${cyan})"
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${green}✓"

prompt() {
    PS1="$(__minimal_python_venv_prompt)$(scm_prompt_info)${reset_color} ${cyan}\W${reset_color} "
}

safe_append_prompt_command prompt
