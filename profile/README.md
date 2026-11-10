<!--
SPDX-License-Identifier: BSD-2-Clause
SPDX-FileCopyrightText: 2026 Aryan Ameri <github@aryan.ameri.coffee>
-->

# divbast

Hardened container images of self-hosted open-source apps.

Each image is built to run with as little as it can: no Linux
capabilities where the app allows it, a read-only root filesystem, a
non-root user, no shell and no package manager. What an image promises is
written down in its repository as a confinement contract, and its tests
run the image under exactly that confinement, so a check never passes
under looser settings than the image ships with.

## Images

| App | Image | Repository |
|---|---|---|
| [Baikal](https://github.com/sabre-io/Baikal), CalDAV and CardDAV | `ghcr.io/divbast/baikal` (arriving soon) | `baikal-oci-image` |

## How images change

Every dependency is pinned, and Renovate proposes each update as a pull
request that merges itself only once every test passes. A merge never
publishes on its own: each image's daily run publishes when its main
branch has moved, so users see at most one new image a day.

## Reporting a security problem

Use **private vulnerability reporting** on the affected repository
(Security, then Report a vulnerability). See [SECURITY.md](https://github.com/divbast/.github/blob/main/SECURITY.md).
