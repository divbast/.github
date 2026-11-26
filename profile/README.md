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
| [Baikal](https://github.com/sabre-io/Baikal), CalDAV and CardDAV | `ghcr.io/divbast/baikal` | [baikal-oci-image](https://github.com/divbast/baikal-oci-image) |
| [LibreSpeed](https://github.com/librespeed/speedtest), speed test | `ghcr.io/divbast/librespeed` | [librespeed-oci-image](https://github.com/divbast/librespeed-oci-image) |
| [Lidarr](https://github.com/Lidarr/Lidarr), music collection manager (v4 nightly, the develop line) | `ghcr.io/divbast/lidarr` | [lidarr-oci-image](https://github.com/divbast/lidarr-oci-image) |
| [Prowlarr](https://github.com/Prowlarr/Prowlarr), indexer manager | `ghcr.io/divbast/prowlarr` | [prowlarr-oci-image](https://github.com/divbast/prowlarr-oci-image) |
| [Radarr](https://github.com/Radarr/Radarr), movie collection manager | `ghcr.io/divbast/radarr` | [radarr-oci-image](https://github.com/divbast/radarr-oci-image) |
| [Sonarr](https://github.com/Sonarr/Sonarr), TV series manager (v5 beta, the develop line) | `ghcr.io/divbast/sonarr` | [sonarr-oci-image](https://github.com/divbast/sonarr-oci-image) |
| [WriteFreely](https://github.com/writefreely/writefreely), federated blogging | `ghcr.io/divbast/writefreely` | [writefreely-oci-image](https://github.com/divbast/writefreely-oci-image) |

## How images change

Everything a build names is pinned by version or digest; the C libraries
compiled into the FrankenPHP binary are the exception, resolved at build
time.
Renovate proposes each update as a pull request that merges itself only
once every test passes. A merge never
publishes on its own: each image's daily run publishes when its main
branch has moved, so users see at most one new image a day.

## Reporting a security problem

Use **private vulnerability reporting** on the affected repository
(Security, then Report a vulnerability). See [SECURITY.md](https://github.com/divbast/.github/blob/main/SECURITY.md).
