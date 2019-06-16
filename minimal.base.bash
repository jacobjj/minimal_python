#!/usr/bin/env bash

function __minimal_python_venv_prompt {
    set +u
    local python_venv=""

    if [[ -n "${CONDA_DEFAULT_ENV}" ]]; then
        python_venv="${CONDA_DEFAULT_ENV}"
        PYTHON_VENV_CHAR=${CONDA_PYTHON_VENV_CHAR}
    elif [[ -n "${VIRTUAL_ENV}" ]]; then
        python_venv=$(basename "${VIRTUAL_ENV}")
    fi

    [[ -n "${python_venv}" ]] && echo "${PYTHON_VENV_THEME_PROMPT_COLOR}[${python_venv}] "
}
