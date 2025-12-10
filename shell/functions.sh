#!/bin/bash

gito() {
    local git_root
    # Capture the output, silence errors
    git_root=$(git rev-parse --show-toplevel 2>/dev/null)

    if [ -n "$git_root" ]; then
        cd "$git_root" || return
    else
        echo "Error: Not inside a git repository." >&2
        return 1
    fi
}
