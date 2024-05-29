---
title: Build unikernel images with Unikraft
date: 2024-05-29 16:47:30 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.8.7
dependentsNumber: "6"
---


Version updated for **unikraft/kraftkit** to version **v0.8.7**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.8.7 (2024-05-29T15:14:48Z)

This is a stable release of kraftkit.

## Changelog
### 🚀 New Features
* 06b44da8aeea52996ced350708655ed9e444caf1: feat(Makefile): Enable verbose Go builds (#1646) (@craciunoiuc)
* ffc6a0dfaa64fb6c44e779f691e17aabdc787bad: feat(cloud): Add `create` command for certificates (#1662) (@nderjung)
* 675ba4c3a97caec12730aeff9f48c68e818efa47: feat(cloud): Introduce image quota output (#1620) (@nderjung)
* 192c128ac08ae20e3385486ec797a5d4073cc521: feat(compose): Support container_name property (#1632) (@nderjung)
* e95202f0b5a47e18fe671f46cc0ed3d11c8f6742: feat(compose): Support depends_on property (#1634) (@nderjung)
* 72bf8b45b63b7429a2832730cbf024676c5abe72: feat(create): Support dns, hostname and domainname (#1633) (@nderjung)
* b6124468edc51998d6883cd211eb1565b407c156: feat(deploy): Inform about image quota limit on fail (#1619) (@nderjung)
* b882cbf2b2eaa2c7cf54f384dc6c6fa6e39d5211: feat(workflows): Generic workflow to build all arch/plat combos (#1643) (@craciunoiuc)
* 8160e8dbaee274531112d90ebebbc4ca650ecaa7: feat: Add target to build all binary artifacts (#1642) (@craciunoiuc)
* 6479a1dd61f9c68961dedfa256b1b1ce1a429ea6: feat: Use remote OCI image references as rootfs element (#1630) (@craciunoiuc)
### 🐛 Bug Fixes
* 88f392cb71fdb4d6acb6f2fea01a13cc56034740: fix(Makefile): Correct verbosity (#1661) (@craciunoiuc)
* 404e318c61c0d7000e22e32cdfbca7ae69441453: fix(action): Dynamically wait for buildkit to start (#1637) (@nderjung)
* 47448999504de2953df134aa059ad97500529dca: fix(build): Handle presence of non-existent `Dockerfile` (#1664) (@craciunoiuc)
* ec918137fce3e7639781ed85e8a303156176be66: fix(compose): Dont assign already used IP addresses (#1635) (@nderjung)
* 16c9ca79bc15c4f425a381bc599014f68d29211a: fix(config): Fallback to KraftCloud token from environment (#1658) (@craciunoiuc)
* a5eff7e6844a13e743ed0a04abb9a89407613b70: fix(import): Statically define the import name (#1647) (@craciunoiuc)
* 8a5fb081b75ea718a5119264b9b7445705e554c6: fix(initrd): Correctly handle all file types (#1641) (@nderjung)
* 463ab29a8ba77053e2565a3c48b5bfa15ca7b4d4: fix(initrd): Do not ignore links when unpacking tar archive (#1640) (@nderjung)
* 84b5ea595bef8123b2475212bb433a1bf14607cd: fix(kraft): Fix issue related to empty application arguments (#1622) (@craciunoiuc)
* cb30969021e32bc2d2d38f6822f2993d9a1ba4dd: fix(oci): Don't delete dependencies of index (#1638) (@nderjung)
* 37da65107f7d6ce4b62931794db55dc190350241: fix(pkg): Handle potentially nil `Project` (#1663) (@craciunoiuc)
* 7001f2e0d68842749b3456f5b779c316dc29b8a9: fix(test): Adjust cloud test state check to match new behaviour (#1618) (@nderjung)
* 3bb03769ce56a143e189d3a1bde6231268c85858: fix(volume): Use `vimport` as import name (#1631) (@craciunoiuc)
* b46a3f65feac5ad9665efc4a3771a382f3e60a2c: fix(webinstall): Respect dependency installation (#1636) (@craciunoiuc)
* edb83421c572bbfe65a4d7627e643cf4895f2d72: fix(webinstall): Various logic and aesthetic changes (#1657) (@craciunoiuc)
### 🤖 Bumps
* 18a01cb9b672f00ed58ef0d646c3ae37c7e1b191: build(deps): Bump golangci/golangci-lint-action from 5 to 6 (#1655) (@nderjung)
* 0a8330fed8649ef6d930c6b7eafbce22fd018614: build(deps): Bump taskmedia/action-conventional-commits from 1.1.16 to 1.1.17 (#1665) (@craciunoiuc)
* ed7fef04862b901179573c943ebc9d376e5ef9c2: gomod(deps): Bump github.com/anchore/stereoscope from 0.0.2-0.20240229175558-fe426d1b1c84 to 0.0.2 (#1654) (@nderjung)
* 7213abe3c45f1f83e7dd140e464f35057510548a: gomod(deps): Bump github.com/charmbracelet/bubbletea from 0.25.0 to 0.26.2 (#1650) (@nderjung)
* 8781ecca9d4db09079506297e13fbec2ad72c2e4: gomod(deps): Bump github.com/cli/cli/v2 from 2.46.0 to 2.49.0 (#1627) (@nderjung)
* b8d3bee5159938178fa858ab9afb830663124064: gomod(deps): Bump github.com/compose-spec/compose-go/v2 from 2.0.2 to 2.1.1 (#1673) (@nderjung)
* 89ac14bd58883e08bcf72b3125c22d127638363d: gomod(deps): Bump github.com/containerd/containerd from 1.7.16 to 1.7.17 (#1677) (@nderjung)
* 3ea1881a72f5978bec17c8c38358d5add8af94f6: gomod(deps): Bump github.com/containerd/nerdctl from 1.7.5 to 1.7.6 (#1652) (@nderjung)
* 36cc1d6a92806affaa3a1f93acdafd7781b89183: gomod(deps): Bump github.com/containerd/nerdctl from 1.7.5 to 1.7.6 (#1675) (@nderjung)
* 226754c03399b0bad43f27640eb729a359ad36c2: gomod(deps): Bump github.com/containers/image/v5 from 5.30.0 to 5.30.1 (#1667) (@craciunoiuc)
* aefbfe48e7bef64280cbbef495f54edf0ee1519a: gomod(deps): Bump github.com/cyphar/filepath-securejoin from 0.2.4 to 0.2.5 (#1670) (@craciunoiuc)
* a8825550c54a6abf22acba9cad79486ebb93f96e: gomod(deps): Bump github.com/docker/docker from 26.0.2+incompatible to 26.1.1+incompatible (#1626) (@nderjung)
* 9a4e4bf7f9b9f5112ed0f4f14f3e2bdc2cc5b96a: gomod(deps): Bump github.com/docker/docker from 26.1.1+incompatible to 26.1.2+incompatible (#1651) (@nderjung)
* 0b94e7424e9b63827915dd5f62206d2e12f96ca1: gomod(deps): Bump github.com/docker/docker from 26.1.2+incompatible to 26.1.3+incompatible (#1669) (@craciunoiuc)
* 0322d36198bf6c388e0320612b98bbb3d8edb547: gomod(deps): Bump github.com/onsi/ginkgo/v2 from 2.17.3 to 2.19.0 (#1674) (@nderjung)
* 82b26f0d65d44c8e9d8f127734e482038988214d: gomod(deps): Bump github.com/onsi/gomega from 1.33.0 to 1.33.1 (#1628) (@nderjung)
* 611b94217b96d2bd75e1bd7db5b5ecfc43224bea: gomod(deps): Bump github.com/shirou/gopsutil/v3 from 3.24.3 to 3.24.4 (#1653) (@nderjung)
* a44b53b8e42908403a4dbf377fc401919738161b: gomod(deps): Bump golang.org/x/sys from 0.19.0 to 0.20.0 (#1625) (@nderjung)
* 0d4b64ab9d1c1947d9bd639b7c4e7e3f52dcf972: gomod(deps): Bump google.golang.org/grpc from 1.63.2 to 1.64.0 (#1666) (@nderjung)
* 366904e8bcf7177465e6286069e02250f778bb19: gomod(deps): Bump google.golang.org/protobuf from 1.33.0 to 1.34.0 in /tools/protoc-gen-go-netconn (#1623) (@nderjung)
* 7ccedaaa251d59678d3f6ce7a755d797bf1b04b3: gomod(deps): Bump google.golang.org/protobuf from 1.34.0 to 1.34.1 in /tools/protoc-gen-go-netconn (#1656) (@nderjung)
* 598428378c17145e70a723618f7212e5a0321ed4: gomod(deps): Bump k8s.io/apimachinery from 0.29.3 to 0.30.1 (#1668) (@craciunoiuc)
* 021e1388a8b71c69fd933d9d0fe7a195dc81167f: gomod(deps): Bump k8s.io/apiserver from 0.29.3 to 0.30.1 (#1676) (@nderjung)
* d145e21cc972b1b40054dc58b75ada3266d7cbc8: gomod(deps): Bump kraftkit.sh from 0.8.5 to 0.8.6 in /tools/go-generate-qemu-devices (#1629) (@nderjung)
* 202577ca603fcb81726ad87e303f277e7bc4b61b: gomod(deps): Downgrade 'bubbletea' and bump deps (#1659) (@nderjung)
### 🐒 Miscellaneous
* 6bc6fc4c7e9f8b93db42aebd82a7fd5317045ed9: refactor(Makefile): Use `go run` for possible tools (#1649) (@craciunoiuc)
* 3dd2abb39fe8031d55226526f79a554148763b90: refactor(cloud): Use new detailed GET request (#1660) (@nderjung)
* 65e648723e612794677208088cc79ee8af67d5ea: refactor(e2e): Remove unneeded nesting for pkg tests (#1621) (@craciunoiuc)
* 280ab13cb86cc5d03d1ef2c3d452daa35306472a: refactor(workflows): Merge all tests into the same file (#1644) (@craciunoiuc)
* c54b14c1c1495436ea56c9f5627cc4afaf3eb886: refactor(workflows): Mutliple changes to names and files (#1645) (@craciunoiuc)


