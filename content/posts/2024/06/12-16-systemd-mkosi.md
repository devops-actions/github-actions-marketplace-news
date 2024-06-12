---
title: setup-mkosi
date: 2024-06-12 16:46:25 +00:00
tags:
  - systemd
  - GitHub Actions
draft: false
repo: systemd/mkosi
marketplace: https://github.com/marketplace/actions/setup-mkosi
version: v23.1
dependentsNumber: "0"
---


Version updated for **systemd/mkosi** to version **v23.1**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-mkosi) to find the latest changes.

## Release notes

## v23.1

- Respin due to git tag mismatch

## v23

- Added `CleanScripts=` to allow running custom cleanup code whenever
  mkosi cleans up the output directory. This allows cleaning up extra
  outputs produced by e.g. a build script that mkosi doesn't know about.
- Added `ConfigureScripts=` to allow dynamically modifying the mkosi
  configuration. Each configure script receives the current config as
  JSON on stdin and should output the new config as JSON on stdout.
- When building a UKI, we don't measure for the TPM SHA1 PCR bank
  anymore.
- All keys in the mkosi config JSON output are now in pascal case,
  except for credentials and environments, where the keys encode names
  of credentials and environment variables and are therefore case
  sensitive.
- Added various settings to allow running mkosi behind a proxy.
- Various fixes to kernel module filtering that should result in fewer
  modules being pulled into the default initrd when
  `KernelModulesExclude=` or `KernelModulesInitrdExclude=` are used.
- Added `ToolsTreeDistribution=` match.
- Removed `vmspawn` verb and replaced it with `VirtualMachineMonitor=`.
- New specifiers for various directories were added. `%D` resolves to
  the directory that mkosi was invoked in, `%P` to the current working
  directory, and `%C` to the parent directory of the config file.
- Added `ForwardJournal=` to have systemd inside a container/VM forward
  its journal to the specified file or directory.
- Systemd scopes are now allocated for qemu, swtpm, virtiofsd and
  systemd-journal-remote if available.
- The `mkosi qemu` virtual machine is now registered with
  systemd-machined if available.
- Added new `oci` output format
- Runtime trees without a target are now mounted to `/root/src` instead
  of a subdirectory of it (To have the same behaviour as
  `BuildSources=`).
- Added `RuntimeBuildSources=` to mount build and source directories
  when booting the image with `mkosi nspawn` or `mkosi qemu`.
- Introduced `--append` to allow command line settings to be parsed
  after parsing configuration files.
- `distribution-release` is not installed by default anymore on
  OpenSUSE.
- Setting `QemuSmp=` to `0` will now make qemu use all available CPUs
- Free page reporting and discard request processing are now enabled by
  default in VMs spawned by `mkosi qemu`.
- Added `ToolsTreeCertificates=` to allow configuring whether to use
  certificates and keys from the tools tree (if one is used) or the
  host.
- Added `never` for `CacheOnly=` to specify that repository metadata
  should always be refreshed.
- Renamed the `none` option for `CacheOnly=` to `auto`.
- Added `ProxyExclude=` to configure hostnames for which requests should
  not go through the configured proxy.
- The default tools tree is now reused on incremental builds.
- Added `VolatilePackages=` and `InitrdVolatilePackages=` to configure
  packages that should be installed after executing build scripts and
  which should not be cached when using `Incremental=`.
- `PackageDirectories=` now has an associated default path
  `mkosi.packages`.
- `reprepro` is now used to generate local apt repositories.
- Support for BSD tar/cpio was dropped.
- When both `ExtraSearchPaths=` and `ToolsTree=` are used, mkosi will
  now prefer running a binary found in `ExtraSearchPaths=` without the
  tools tree over running the binary from the tools tree. If a binary is
  not found in `ExtraSearchPaths=`, the tools tree is used instead.
- An artifact directory is now made available when running scripts which
  can be used to pass around data between different scripts. mkosi will
  also look for microcode and initrds in the artifact directory under
  the `io.mkosi.microcode` and `io.mkosi.initrd` subdirectories.
- Added `Environment=` match setting to check for environment variables
  defined with the `Environment=` setting.
- The `basesystem` package is now always installed in Fedora and
  CentOS images instead of the `filesystem` package.
- The `qemu`, `shell` and `boot` verbs do not automatically build the
  image anymore unless `--force` is specified.
- `SplitArtifacts=` is now supported for the portable, sysext and
  confext outputs.
- The `WithDocs=` option was implemented for pacman-based distributions.
- The default Fedora release was bumped to 40.
- `QemuSwtpm=` can now be used with `QemuFirmware=` set to `linux` or
  `bios`.
- Added `UnitProperties=` to allow configure properties on the scopes
  generated by `systemd-nspawn` and `systemd-run`.
- mkosi now only builds a single default tools tree per build using the
  settings from the last regular image that we'll build.
- Configure scripts are now only executed for verbs which imply an image
  build and are executed with the tools tree instead of without it.
- `$QEMU_ARCHITECTURE` is now set for configure scripts to easily allow
  scripts to figure out which qemu binary will be used to run qemu.
- A file ID can now be specified for `QemuDrives=`. This allows adding
  multiple qemu drives that are backed by the same file.
- mkosi doesn't fail anymore if images already exist when running
  `mkosi build`.
- Image names from `mkosi.images/` are now preferred over the specified
  image ID when determining the output filename to use for an image.
- `--include` now has a shorthand option `-I`.
- The `WITH_NETWORK` environment variable is now passed to build and
  finalize scripts.
- We now clamp mtimes to the specified source date epoch timestamp
  instead of resetting all mtimes. This means that we won't touch any
  mtimes that are already older than the given source date epoch
  timestamp.
- Removed support for CentOS 8 Stream as it is now EOL.
- The `coredumpctl` and `journalctl` verbs now operrate on the path
  specified in `ForwardJournal=` if one is set.
- Added `UnifiedKernelImageFormat=` format setting to allow configuring
  the naming of unified kernel images generated by mkosi.
- The `versionlock` plugin is now enabled by default for dnf with a noop
  configuration.
- `Repositories=` is now implemented for zypper.
- `KernelModulesInclude=` and `KernelModulesInitrdInclude=` now take the
  special values `host` and `default` to include the host's loaded
  modules and the default kernel modules defined in `mkosi-initrd`
  respectively.
- `KernelModulesIncludeHost=` and `KernelModulesInitrdIncludeHost=` are
  now deprecated.
- Added `mkosi dependencies` to output the list of packages required by
  mkosi to build and boot images.

