<!--
SPDX-License-Identifier: BSD-2-Clause
SPDX-FileCopyrightText: 2026 Aryan Ameri <github@aryan.ameri.coffee>
-->

# Contributing to divbast

Thanks for helping. A few rules hold across every divbast repository.

## Commits

- Linux-kernel style: a `subsystem: short description` subject under 75
  characters, in the imperative mood ("fix", not "fixed"), a blank line,
  then a body wrapped at about 75 columns saying *why* the change is
  needed, not only what it does.
- Sign every commit (`git commit -S`). The main branch accepts only
  verified signatures.
- Work done with an LLM's help ends its body with two trailers, and
  nothing else credits the model:

  ```
  Developed-by: Your Name <you@example.com>
  Assisted-by: <Vendor:model-name>
  ```

## Before you open a pull request

- Run `just ci`. It runs every gate CI runs, with the tool versions
  pinned in `mise.toml` (`just setup` installs them).
- Every file carries an SPDX licence header (REUSE); files that cannot
  carry one get a `.license` file beside them.
- A test you add should fail without your change. Show that it can.

Pull requests from forks wait for a maintainer to approve their workflow
runs before CI starts.

## Conduct

Everyone taking part follows the [Code of Conduct](CODE_OF_CONDUCT.md).
