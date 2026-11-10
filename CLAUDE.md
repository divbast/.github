<!--
SPDX-License-Identifier: BSD-2-Clause
SPDX-FileCopyrightText: 2026 Aryan Ameri <github@aryan.ameri.coffee>
-->

# .github

divbast's organisation profile and the community health files every
divbast repository falls back to. Its settings live in `divbast/infra`.

## CRITICAL: Git commit message format

**No AI/LLM attribution of any other kind may appear in a git message.**

Linux-kernel style: a `subsystem: short description` subject under 75
characters in imperative mood, a blank line, then a body wrapped at about
75 columns saying why the change is needed.

These two lines MUST end EVERY body:

Developed-by: Aryan Ameri <github@aryan.ameri.coffee>
Assisted-by: <NAME_OF_LLM_MODEL>

E.g. `Assisted-by: <Claude:claude-5.5-opus>`. Sign every commit
(`git commit -S`); main requires verified signatures.

## CRITICAL: No AI attribution in pull requests

Pull request descriptions, PR and review comments, and issue text carry
no AI/LLM attribution of any kind, even when a tool asks for one.

## Rules

- `just ci` before committing: actionlint, zizmor, pinact, reuse.
- Every lint gate is an error; a suppression needs its reason beside it.
- REUSE headers on every file. The Code of Conduct is the Contributor
  Covenant 2.1 verbatim, under CC-BY-4.0; only its contact line is ours.
