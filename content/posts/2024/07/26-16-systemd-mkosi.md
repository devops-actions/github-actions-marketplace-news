---
title: setup-mkosi
date: 2024-07-26 16:47:31 +00:00
tags:
  - systemd
  - GitHub Actions
draft: false
repo: systemd/mkosi
marketplace: https://github.com/marketplace/actions/setup-mkosi
version: v24
dependentsNumber: "0"
---


Version updated for **systemd/mkosi** to version **v24**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-mkosi) to find the latest changes.

## Release notes

- The default kernel command line of `console=ttyS0` (or equivalent for
  other architectures) has been removed. The required `console=`
  argument to have the kernel output to the serial console has to be
  added manually from `v24` onwards.
- Support for installing local packages located in directories in
  `BuildSources=` was dropped. Instead, the packages can be made
  available for installation via `PackageManagerTrees=`.
- Configuration parsing was reworked to remove the need for the `@`
  specifier and to streamline building multiple images with
  `mkosi.images/`. If you were building multiple images with
  `mkosi.images/`, you'll need to adapt your configuration to the
  rework. Read the **Building multiple images** section in the
  documentation for more information.
- mkosi has gained the option to generate completion scripts for bash,
  fish and zsh. Packagers should generate the scripts during packaging
  and ship them in the appropriate places.
- Added support for CentOS Stream 10.
- mkosi now installs a separate `mkosi-initrd` script that can be used
  to build initramfs images intended for use on the local system.
- We do not automatically append `centos-stream` or `fedora` anymore to
  CentOS (and derivatives) and Fedora mirrors specified with `Mirror=`
  as not all mirrors store the repository metadata under these
  subdirectories. Users are now required to add these subdirectories
  themselves in `Mirror=`. If the EPEL repositories are enabled for
  CentOS Stream (and derivatives) and `Mirror=` is used, we look for the
  EPEL repositories in `../fedora` relative to the mirror specified in
  `Mirror=`.
- We now support compressed tar archives wherever we already accept tar
  archives as input.
- We now always rerun the build if `Format=none` and don't remove
  previous outputs in that case (unless `--force` is specified). This
  allows using `mkosi -t none` to rerun the build scripts without
  removing the previous image. This can then be combined with
  `RuntimeBuildSources=yes` to make the build script outputs available
  in a booted container or virtual machine so they can be installed
  without having to rebuild the image.
- We now use `virtconsole` to provide the serial console when booting
  with `qemu`.
- `root=PARTUUID` and `mount.usr=PARTUUID` on the kernel command line
  are now automatically extended with the actual PARTUUID of the
  corresponding partition.
- All available OpenSUSE repositories are now supported and can be
  enabled with `Repositories=`.
- Building OpenSUSE `aarch64` images is now supported
- `mkosi dependencies` was beefed up to handle more scenarios properly
- The default list of kernel modules that are always added to the
  initramfs was extended with various virtualization modules.
- Added a `Repositories=` match.
- Cached images are now invalidated if packages specified via
  `PackageDirectories=` change.
- Added `VolatilePackageDirectories=` which can be used to provide local
  packages that do not invalidate cached images.
- `mkosi.pkgmngr` is now used as the default path for
  `PackageManagerTrees=`.
- The package directory that build scripts can use to make built
  packages available for installation (`$PACKAGEDIR`) is now shared
  between all image builds. This means that packages built in earlier
  images and stored in `$PACKAGEDIR` become available for installation
  in all subsequent image builds.
- The default tools tree distribution is now chosen based on the host
  distribution instead of the target distribution.
- mkosi can now be invoked from the initramfs.


