#!/usr/bin/env bash
#
# Provide standard project structure information.

set_standard_project_structure_variables() {
    PROJECT_ROOT_DIR="$(git rev-parse --show-toplevel)"
    TOOLS_DIR="${PROJECT_ROOT_DIR}/tools"
    TOOLS_HOOKS_DIR="${TOOLS_DIR}/hooks"
    TOOLS_HOOKS_ACTIVATE_DIR="${TOOLS_HOOKS_DIR}/activate"
    ENVIRONMENT_DIR="${PROJECT_ROOT_DIR}/environment"
}

unset_standard_project_structure_variables() {
    unset PROJECT_ROOT_DIR
    unset TOOLS_DIR
    unset TOOLS_HOOKS_DIR
    unset TOOLS_HOOKS_ACTIVATE_DIR
    unset ENVIRONMENT_DIR
}
