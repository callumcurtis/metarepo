#!/usr/bin/env bash
#
# Provide project structure information.

set_project_structure_variables() {
    PROJECT_ROOT="$(git rev-parse --show-toplevel)"
    TOOLS_DIR="${PROJECT_ROOT}/tools"
    TOOLS_HOOKS_DIR="${TOOLS_DIR}/hooks"
    TOOLS_HOOKS_ACTIVATE_DIR="${TOOLS_HOOKS_DIR}/activate"
    ENVIRONMENT_DIR="${PROJECT_ROOT}/environment"
    ENVIRONMENT_AIRFLOW_DIR="${ENVIRONMENT_DIR}/airflow"
}

unset_project_structure_variables() {
    unset PROJECT_ROOT
    unset TOOLS_DIR
    unset TOOLS_HOOKS_DIR
    unset TOOLS_HOOKS_ACTIVATE_DIR
    unset ENVIRONMENT_DIR
    unset ENVIRONMENT_AIRFLOW_DIR
}
