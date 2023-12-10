#!/usr/bin/env bash
#
# Provide project structure information for bootstrapping.

set_bootstrap_project_structure_variables() {
    __BOOTSTRAP__TASK_DIR=$(git rev-parse --show-toplevel)/.environment/task
}

unset_bootstrap_project_structure_variables() {
    unset __BOOTSTRAP__TASK_DIR
}
