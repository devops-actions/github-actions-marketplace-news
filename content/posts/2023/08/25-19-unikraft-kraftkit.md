---
title: Build unikernel images with Unikraft
date: 2023-08-25 19:11:36 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.6.5
dependentsNumber: 0
---


Version updated for **unikraft/kraftkit** to version **v0.6.5**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.6.5 (2023-08-25T15:54:53Z)

This is a stable release of kraftkit.

## Changelog

### ⚠️ Breaking changes

* fix(pull)!: Change flag to be consistent & add registry usage (#746) (0836c85)
* feat(run)!: Disable QEMU preamble and add option to show it  (#656) (c6f82ab)
* feat!: Replace dynamic OCI arguments with generic options (#660) (8ea7051)
* refactor(oci)!: Rename `PushDigest` to `SaveDigest` (#651) (46ab0b2)
* fix(config)!: Change the default parallel configuration (#614) (c6477cc)

### 🚀 New Features

* feat: Install all kraftkit dependencies & fixes (#625) (7ea015e)
* feat(goreleaser): Build binary also for linux-arm64 (#743) (ed92cff)
* feat(make): Use different make binaries for different distributions (#744) (9257c1c)
* feat(login): Add option to login to container registries (#738) (7485481)
* feat(dockerfile-llb-frontend): Use WellKnownKernelPath in build output (#732) (ad78cba)
* feat(dockerfile-llb-frontend): Add the initial LLB frontend code (#706) (64bbd99)
* feat: Exit with error when unikernels panic (#709) (8a562d8)
* feat(app): Allow instantiating kraftfiles from byte slices. (#717) (6680d2d)
* feat(machine): Check for runner compatibility (#689) (2484c2e)
* feat: Introduce GitHub Action (#677) (e1d3bba)
* feat(oci): Add option to package initrd directories (#672) (d04da9b)
* feat: Move internal target filtering to public package (#680) (28b7051)
* feat: Allow building on Darwin for both arm64 and amd64 architectures (#670) (1398aa6)
* feat(webinstall): Add Arch Linux as package manager option (#611) (ce6d65a)
* feat(run)!: Disable QEMU preamble and add option to show it  (#656) (c6f82ab)
* feat(oci): Implement directory handler pushing (#665) (0f3ebc3)
* feat: Upgrade to Go 1.20.6 (#553) (1f4cb63)
* feat(goreleaser): Register Nix as a package option (#607) (8f4c405)
* feat!: Replace dynamic OCI arguments with generic options (#660) (8ea7051)
* feat: Native volume support (#629) (cf6f075)
* feat: Better detection for machines when running (#649) (2208df3)


### 🐛 Bug fixes

* fix(pull)!: Change flag to be consistent & add registry usage (#746) (0836c85)
* fix(oci): Remove temporary files after using them (#690) (d40cad1)
* feat: Install all kraftkit dependencies & fixes (#625) (7ea015e)
* fix(logs): Check for empty argument list (#745) (7a4e430)
* fix: Do not run empty process lists (#691) (f6ae3a5)
* fix(store): Attempt once before starting retry loop (#699) (c8d847c)
* fix(run): Fix race-condition related to short-lived instances (#740) (1eedcd3)
* fix(login): Create directory structure if file doesn't exist (#741) (a9db5ac)
* gomod: Add missing go.mod entry and add gofumpt fix (#739) (0223d4d)
* fix(unikraft): Properly parse kernel arguments before forwarding them (#737) (61635e5)
* fix(kraft): Add better error guidance for version checks (#730) (bbfbfc8)
* fix(unikraft): Hardcode language libraries before libcs (#736) (d39b3e7)
* fix(dockerfile-llb-frontend): use scratch image for the final result (#734) (775ff7b)
* fix(oci): Populate image information after fetching (#733) (ceaab59)
* fix(qemu): Add pvpanic device only for x86_64 (#720) (7e21178)
* fix(qemu): panic due to unchecked nil map (#718) (2ffc259)
* fix(workflows): Accept delimiters in PR titles (#697) (52a660c)
* fix(github-action): Re-use project instantiation and target selection (#693) (f3250ef)
* fix(workflows): Correct target name to `kraftkit-full` (#696) (df07dec)
* fix(workflows): Correct target name to `kraftkit-full` (#694) (3fa550d)
* fix: Handle user emulation via QEMU (#688) (370f847)
* fix(rm): Check for empty set of arguments (#687) (81b6d37)
* fix: Set proper group permissions for runtime directory (#630) (6e780b4)
* fix(cmdfactory): Correctly handle dynamically registered flags (#671) (a3462b7)
* fix(run): Remove stop race condition (#655) (20225fb)
* fix: Alias platform argument (#662) (38a5be2)
* fix(cli): Select targets only once (#659) (a101670)
* fix: flag attribution to struct fields of composite type (#545) (8b08d25)
* fix(unikraft): Do not append library prefix for all libraries (#654) (0bc6d7b)
* fix(rm): Remove entire QEMU machine state directory (#650) (4ab1b28)
* fix(manifest): Improve manifest Catalog caching (#646) (4a2063b)
* fix(qemu): Handle parsing version commands properly (#638) (42d1d32)
* fix(run): Show reason for runner failure in debug logs (#648) (6947688)
* fix(oci): Add missing writer file closes in directory handler (#628) (54d9504)
* fix: Ensure pulling with directory handler works properly (#626) (ececfc4)
* fix(buildenvs): Enable TCG (emulation) in QEMU (#624) (950da25)
* fix(config)!: Change the default parallel configuration (#614) (c6477cc)
* fix(menu): Fix hanging `kraft menu` (#613) (49155ad)
* fix(build): Negate usage doc for `--no-fast` (#610) (06a682a)

### 🐒 Miscellaneous

* refactor: Move runtime directory to user scope (#731) (55392fd)
* gomod(deps): Bump github.com/golang/glog from 1.0.0 to 1.1.2 in /tools/protoc-gen-go-netconn (#726) (41de9f7)
* gomod(deps): Bump github.com/golang/glog from 1.0.0 to 1.1.2 in /tools/go-generate-qemu-devices (#724) (047e915)
* build(deps): Bump actions/checkout from 2 to 3 (#725) (5b56044)
* build(deps): Bump actions/checkout from 2 to 3 (#715) (dac366c)
* build(deps): Bump actions/upload-artifact from 2 to 3 (#714) (58c6744)
* build(deps): Bump actions/download-artifact from 2 to 3 (#713) (3cf770d)
* refactor: Misc base workflow improvements (#692) (47775a4)
* docs(README): Use `musl` in `README.md` (#685) (d42e7e2)
* gomod(deps): Bump github.com/go-git/go-git/v5 from 5.8.0 to 5.8.1 (#684) (57e76dd)
* gomod(deps): Bump github.com/onsi/gomega from 1.27.9 to 1.27.10 (#683) (c0f9040)
* gomod(deps): Bump k8s.io/apimachinery from 0.27.3 to 0.27.4 (#682) (d8e81e2)
* gomod(deps): Bump github.com/onsi/gomega from 1.27.8 to 1.27.9 (#666) (b14725b)
* gomod(deps): Bump github.com/go-git/go-git/v5 from 5.7.0 to 5.8.0 (#667) (19055f2)
* gomod(deps): Bump github.com/compose-spec/compose-go from 1.16.0 to 1.17.0 (#668) (2fba223)
* refactor(oci)!: Rename `PushDigest` to `SaveDigest` (#651) (46ab0b2)
* refactor(run): Misc error message improvements (#652) (e3092d8)
* gomod(deps): Bump github.com/compose-spec/compose-go from 1.15.1 to 1.16.0 (#643) (6ad3aee)
* gomod(deps): Bump github.com/cli/cli/v2 from 2.31.0 to 2.32.0 (#644) (c5105c9)
* gomod(deps): Bump github.com/muesli/termenv from 0.15.1 to 0.15.2 (#642) (48f3e0b)
* gomod(deps): Bump github.com/iancoleman/strcase from 0.2.0 to 0.3.0 in /tools/go-generate-qemu-devices (#640) (cecc550)
* gomod(deps): Bump github.com/iancoleman/strcase from 0.2.0 to 0.3.0 in /tools/protoc-gen-go-netconn (#639) (9f72ab6)
* gomod(deps): Bump golang.org/x/oauth2 from 0.9.0 to 0.10.0 (#619) (3f3ded3)
* gomod(deps): Bump kraftkit.sh from 0.6.1 to 0.6.4 in /tools/go-generate-qemu-devices (#616) (2b03782)
* gomod(deps): Bump oras.land/oras-go/v2 from 2.2.0 to 2.2.1 (#617) (b0324f3)
* gomod(deps): Bump github.com/docker/docker from 24.0.2+incompatible to 24.0.4+incompatible (#618) (08fba58)
* gomod(deps): Bump github.com/shirou/gopsutil/v3 from 3.23.5 to 3.23.6 (#620) (2915a78)



