---
title: setup-mkosi
date: 2023-10-05 19:12:48 +00:00
tags:
  - systemd
  - GitHub Actions
draft: false
repo: systemd/mkosi
marketplace: https://github.com/marketplace/actions/setup-mkosi
version: v18
dependentsNumber: "210"
---


Version updated for **systemd/mkosi** to version **v18**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **210** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-mkosi) to find the latest changes.

## Release notes

- `$SCRIPT` was renamed to `$CHROOT_SCRIPT`. `$SCRIPT` can still be used
  but is considered deprecated.
- Added `RuntimeTrees=` setting to mount directories when booting images
  via `mkosi boot`, `mkosi shell` or `mkosi qemu`. The directories are
  mounted with a uid map that maps the user invoking mkosi to the root
  user so that all files in the directory appear as if owned by the root
  user in the container or virtual machine and any new files created in
  the directories are owned by the user invoking mkosi. To make this
  work in VMs, we use `VirtioFS` via `virtiofsd`. Note that this
  requires systemd v254 or newer to be installed in the image.
- Added support for booting directory images with `mkosi qemu` via
  `VirtioFS`. When `CONFIG_VIRTIOFS` and `CONFIG_VIRTIO_PCI` are builtin
  modules, no initramfs is required to make this work.
- Added `Include=` or `--include` to include extra configuration files
  or directories.
- Added support for specifiers to access the current value of certain
  settings during configuration file parsing.
- `mkosi` will now exit with an error when no configuration was
  provided.
- Multiple scripts of the same type are now supported.
- Custom distributions are now supported via the new `custom`
  distribution. When using `custom` as the distribution, the rootfs must
  be provided via base trees, skeleton trees or prepare scripts.
- We now use local GPG keys for rpm based distributions if the
  `distribution-gpg-keys` package is installed on the host.
- Added `RuntimeSize=` to grow the image to a specific size before
  booting it when using `mkosi boot` or `mkosi qemu`.
- We now set `MKOSI_UID` and `MKOSI_GID` when running scripts which are
  set to the uid and gid of the user invoking mkosi respectively. These
  can be used to run commands as the user that invoked mkosi.
- Added an `Architecture=` match
- Initrds specified with `Initrds=` are now used for grub menuentries as
  well.
- `ImageId=` and `ImageVersion=` are now written to os-release as
  `IMAGE_ID` and `IMAGE_VERSION` if provided.
- We pass command line arguments passed to the `build` verb to the build
  script again.
- We added support for the "RHEL Universal Base Image" distribution.
