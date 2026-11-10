# SPDX-License-Identifier: BSD-2-Clause
# SPDX-FileCopyrightText: 2026 Aryan Ameri <github@aryan.ameri.coffee>

set shell := ["mise", "exec", "--", "bash", "-euo", "pipefail", "-c"]

# Tool versions live in mise.toml

default:
    @just --list

setup:
    #!/usr/bin/env bash
    # The one recipe that must not run through `mise exec`: it installs mise's tools
    set -euo pipefail
    mise install

# Verify every action is a SHA
actions-check:
    GITHUB_TOKEN="${GITHUB_TOKEN:-$(gh auth token)}" pinact run --verify --check

# Rewrite tag references to the SHA
actions-pin:
    GITHUB_TOKEN="${GITHUB_TOKEN:-$(gh auth token)}" pinact run

workflow-audit:
    GITHUB_TOKEN="${GITHUB_TOKEN:-$(gh auth token)}" zizmor --persona=auditor .github/workflows

lint: actions-check workflow-audit
    actionlint
    reuse lint

ci: lint
