---
title: setup-mkosi
date: 2023-11-15 19:04:54 +00:00
tags:
  - systemd
  - GitHub Actions
draft: false
repo: systemd/mkosi
marketplace: https://github.com/marketplace/actions/setup-mkosi
version: v19
dependentsNumber: "214"
---


Version updated for **systemd/mkosi** to version **v19**.
- This action is used across all versions by **214** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-mkosi) to find the latest changes.

## Release notes

- Support for RHEL was added!
- Added `journalctl` and `coredumpctl` verbs for running the respective   tools on built directory or disk images.
- Added a `burn` verb to write the output image to a block device.
- Added a new `esp` output format, which is large similar to the existing `uki`   output format but wraps it in a disk image with only an ESP.
- `Presets` were renamed to `Images`. `mkosi.images/` is now used   instead of `mkosi.presets/`,  the `Presets=` setting was renamed   to `Images=` and the `Presets` section was merged into the `Config`   section. The old names can still be used for backwards compatibility.
- Added profiles to support building variants of the same image in one   repository. Profiles can be defined in `mkosi.profiles/` and one can   be selected using the new `Profile=` setting.
- mkosi will now parse `mkosi.local.conf` before any other config files   if that exists.
- Added a kernel-install plugin. This is only shipped in source tree and not   included in the Python module.
- Added a `--json` option to get the output of `mkosi summary` as JSON.
- Added shorthand `-a` for `--autologin`.
- Scripts with the `.chroot` extension are now executed in the image   automatically.
- Added `rpm` helper script to have `rpm` automatically operate on the   image when running scripts.
- Added `mkosi-as-caller` helper script that can be used in scripts to   run commands as the user invoking mkosi.
- `mkosi-chroot` will now start a shell if no arguments are specified.
- Added `WithRecommends=` to configure whether to install recommended packages   by default or not where this is supported. It is disabled by default.
- Added `ToolsTreeMirror=` setting for configuring the mirror to use for the   default tools tree.
- `WithDocs=` is now enabled by default.
- Added `BuildSourcesEphemeral=` to make source directories ephemeral  when running scripts. This means any changes made to source  directories while running scripts will be undone after the scripts   have finished executing.
- Added `QemuDrives=` to have mkosi create extra qemu drives and pass  them to qemu when using the `qemu` verb.
- Added `BuildSources=` match to match against configured build source  targets.
- `PackageManagerTrees=` was moved to the `Distribution` section.
- We now automatically configure the qemu firmware, kernel cmdline and  initrd based on what type of kernel is passed by the user via  `-kernel` or `QemuKernel=`.
- The mkosi repository itself now ships configuration to build basic  bootable images that can be used to test mkosi.
- Added support for enabling `updates-testing` repositories for Fedora.
- GPG keys for CentOS, Fedora, Alma and Rocky are now looked up locally  first before fetching them remotely.
- Signatures are not required for local packages on Arch anymore.
- Packages on opensuse are now always downloaded in advance before  installation when using zypper.
- The tar output is now reproducible.
- We now make sure `git` can be executed from mkosi scripts without  running into permission errors.
- We don't create subdirectories beneath the configured cache directory  anymore.
- Workspace directories are now created outside of any source  directories. mkosi will either use `XDG_CACHE_HOME`, `$HOME/.cache` or  `/var/tmp` depending on the situation.
- Added environment variable `MKOSI_DNF` to override which dnf to use  for building images (`dnf` or `dnf5`).
- The rootfs can now be modified when running build scripts (with all  changes thrown away after the last build script has been executed).
- mkosi now fails if configuration specified via the CLI does not apply  to any image (because it is overridden).
- Added a new doc on building rpms from source with mkosi  (`docs/building-rpms-from-source.md`).
- `/etc/resolv.conf` will now only be mounted for scripts when they are run  with network access.
