---
title: Build unikernel images with Unikraft
date: 2024-07-26 16:47:29 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.9.0
dependentsNumber: "6"
---


Version updated for **unikraft/kraftkit** to version **v0.9.0**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.9.0 (2024-07-26T12:55:43Z)

This is a stable release of kraftkit.

## Changelog
### ⚠️ Breaking Changes
* 38abcdc0e22b54341efc4b21046f57d805511cba: feat(cloud)!: Introduce 'scale-to-zero' stand-alone flags (#1756) (@razvand)
* 4409232de6764b861c723b316e67d1a6bd3cb3ba: fix!: Major improvements to `kraft cloud compose` (#1678) (@craciunoiuc)
* be0d6acba094ce0e629fd7555c3598306de0d781: refactor!: Replace 'service group' in favour of 'service' (#1752) (@nderjung)
* 06ce09e5b435534a6ea87d9b37535d94dc471a99: refactor(tunnel)!: Rework the tunnel CLI documentation (#1795) (@craciunoiuc)
### 🚀 New Features
* 887f7287773683b2690a1207c7f1865896de0a2f: feat(action): Allow running in privileged mode (#1717) (@craciunoiuc)
* 4a2f872632cca1c437c2d0cf8d61b7edde7d5fab: feat(cloud): Add ability to specify certificate to use when creating (#1745) (@craciunoiuc)
* 4adc28a80257c591bb33628b317c47262a3161b0: feat(cloud): Add volume import partial checks (#1586) (@skuenzer)
* f2098553eb2e310d78de8313ac1bdded7d101f62: feat(cloud): Also read certificate chain from file (#1735) (@marcrittinghaus)
* df90c048194d6b24624ce766bbbc2d9dc3bc3c97: feat(cloud): Expose several new fields (#1770) (@craciunoiuc)
* d47d2f4492fa83f2278acb15ecbaa178b5acc62b: feat(cloud): Introduce connections to proxy unikernel (#1680) (@skuenzer)
* 660373aa9ababb5b8e76bccb5eba255cbf4f895d: feat(compose): Introduce the pull/push subcommands (#1697) (@nderjung)
* 66f124e487878387371b5b51e69aead788f86de9: feat(internal): Allow for specifying optional measurement units (#1687) (@nderjung)
* 53ed2fb7afc4d3f7f82ffa99851b068b5f7db6c6: feat(internal): Prompt for rerunning configure step (#1686) (@nderjung)
* 56f0b2052473e98af245a65f1c2d74c714f12175: feat(kraft): Introduce "rootfs" deployer and packager runtime flag (#1800) (@craciunoiuc)
* f607635ef1f5c626519304d1db4056223a28e168: feat(machine): Allow random number generation in emulation (#1703) (@craciunoiuc)
* 0fdee0e171755c2df164a24aa4166704a60dcd27: feat(machine): Inform users if HWRNG is not supported (#1762) (@nderjung)
* 150861b3a33c4f0d92d85e178a62a0fe567612ca: feat(oci): Add debug log entries for what the cmd is set to (#1792) (@craciunoiuc)
* 146ccdc330ceaec6b2295942fbceec9e2f0b06ec: feat(workflows): Upload artifacts on build success (#1751) (@nderjung)
* ded62c5296eb5f70a2c816afb16628bc2c9d43f4: feat: Accept multiple token/metro variations (#1766) (@razvand)
* 3c3e4a49840b9564ad2f4585cf8ad64edc9658d1: feat: Add details about rootfs build origin (#1794) (@craciunoiuc)
* 729cd70d18becd205f9eb1f458383b7942ea5f79: feat: Bump buildkit to v0.14.1 (#1733) (@nderjung)
* 712495d55f2c9681298dff4f4ae507bb9de6b9f7: feat: Introduce `labels` element to `Kraftfile` (#1753) (@nderjung)
* 16b77529cc818abe6813fd58e349e31d6b51b728: feat: Several fixes & new features from the platform (#1796) (@nderjung)
* 845710d27f357f8b7da1445bd3375d432c8d1a0b: feat: Show package size during pushing routines (#1808) (@craciunoiuc)
### 🐛 Bug Fixes
* 8a58900c64a91c7dee194b0400754813e463d846: fix(Makefile): Add go build tags for tools also (#1682) (@craciunoiuc)
* 9e0e41d46901e2a7ff9d5e9860683d826a44d3e0: fix(action): Correctly set workdir (#1713) (@nderjung)
* 98b2111b8ebf52a05f1f88ab5112e5e81aa1b0d3: fix(buildenvs): Create '/run/user' directories (#1706) (@nderjung)
* f580b82a5d740ffdc802b153ea74f85267249e34: fix(cloud): Add missing word in documentation (#1783) (@nderjung)
* 2277ef5b938ad212cd67578a133a05047d51649e: fix(cloud): Check for nil image before using (#1803) (@nderjung)
* fb06b2d3a99219f94a8cb292e496eeab13286b3e: fix(cloud): Correct typo showing incorrect error message  (#1744) (@nderjung)
* 95693d682d4bc948fbde95d1a95210bd0388dd53: fix(cloud): Correctly use service group when creating instances (#1780) (@marcrittinghaus)
* c58f3de56d76b618da5fd3dd58d90cf43e5508cd: fix(cloud): Decode instances before printing them (#1805) (@nderjung)
* 188415c00f0976b7bdd5f16aea57c7e3493ae6ff: fix(cloud): Document missing use cases (#1785) (@nderjung)
* a2b83bffa068091c93f5b38bb06827a3fbc1f17d: fix(cloud): Fix misplaced annotation (#1727) (@craciunoiuc)
* 4ef4dd734bd3903c3dac3fb66e0471795049474f: fix(cloud): Fixes to 'import' related to timeout & format (#1804) (@nderjung)
* ce1d8e8151b49116f00920c58804042d73662e7f: fix(cloud): Immediately abort logging if channels closed (#1767) (@razvand)
* 8b6c838bca26515c4d6c6e0414fa973d9e66e7ff: fix(cloud): Minor rewording of main cloud subcommand (#1807) (@craciunoiuc)
* a6942a0b821ad856bb79ced5c0a6b86badfc361f: fix(cloud): Only rollout when '--start' is also provided (#1768) (@razvand)
* 61cb8baf14e22cfe2836d5952948a336d0cdbe45: fix(cloud): Only send the `scale-to-zero` policy when the flag is set (#1791) (@nderjung)
* c573eb4eb8f6f64e1b79ae1e0a47c0d1cf319155: fix(cloud): Print scale to zero info (#1784) (@nderjung)
* 3246a56b8d07b90ea89223b9a6e42025d038523b: fix(cloud): Several fixes for volume importing and others (#1782) (@nderjung)
* c16b72771ea240bdd8aecb5ab117027036640700: fix(cloud): Several fixes to the cloud commands (#1772) (@craciunoiuc)
* 0c443866c8a5c44dc8aba4565fe4448f10816ecd: fix(cloud): Several scale to zero fixes (#1771) (@craciunoiuc)
* 4cd54944c0ac69a266993d5584d9be82aaa86a43: fix(cloud): Several small usability fixes (#1809) (@nderjung)
* 5c7a03996ae8c273a9edd41f720e4a6d01750d43: fix(cloud): Show UUID if name is missing for attached volumes (#1743) (@nderjung)
* 46d5e8f49b293f3cad168b411533199c791533cd: fix(compose): Do not error out if Composefile is removed (#1728) (@nderjung)
* 99cf266f380b9ba56eefa211e5c6df6682e3a76e: fix(create): Defer update of project in store (#1729) (@nderjung)
* d7c2717064e15527ddfeb9c81208a80dd7837966: fix(deploy): Prevent deployers with empty `String()` from prompting (#1806) (@craciunoiuc)
* 0d75020289a5aaf95dda376c55dfb0d7ecab3a19: fix(initrd): Correctly pass hardlink creation parameters (#1731) (@nderjung)
* b8468cdbec71d577d798a093e1986bb5b3dad51e: fix(initrd): Correctly propagate workdir to dockerfile (#1696) (@nderjung)
* 0543f6ef4098832d68ea2bb0b1c4e1de6ecb601a: fix(initrd): Remove parse error message for OCI images (#1685) (@nderjung)
* e5d1aafcd2c751d231eba99d8bb2b0c634228785: fix(initrd): Reverse order of detection (#1707) (@nderjung)
* 1463037cb6d3c25082132218deba5242b2e47a4d: fix(initrd): Set additional metadata for directories also (#1730) (@nderjung)
* dd4e64d703edc12efd0fc6778623cb7b81fe7aaa: fix(internal): Also stop process when machine is just created (#1734) (@nderjung)
* fed7df6bd32013ed6cc7d47966695736f88adc7a: fix(internal): Delete empty `Makefile.uk` files on builds (#1701) (@nderjung)
* ef8b2581b9a401f53beef7cfab23476d52710f1d: fix(kraft): Various adjustments to help menu display (#1810) (@craciunoiuc)
* d076e5f46608115b40180d439c1b2377444646c8: fix(machine): Enable features only for QEMU 8.0.0 and later (#1705) (@craciunoiuc)
* 60c20e711ba44aec5db80e9e0dc8f65820eb5e28: fix(oci): Correctly read the docker config containing auths (#1716) (@nderjung)
* 0a8424e85027acf3866243f67ae91b23a151594d: fix(oci): Pass ref to `AddBlob` (#1797) (@craciunoiuc)
* 44c8237a686877a3fd760e30fadf4c6491030808: fix(oci): Remove duplicate OS features from OCI config files (#1754) (@craciunoiuc)
* e1ea918c392df54b39a03013311203e66af8febb: fix(processtree): Propagate error to parent process on timeout (#1781) (@craciunoiuc)
* 00f6f4d79cbb531ebb0e80b36c686d2d5d29a1ad: fix(processtree): Provide the right-hand text in brackets in norender (#1798) (@craciunoiuc)
* e6e6374de05dbce44ab433da54bd1a176460fdf5: fix(remove): Correctly search for networks when deleting machine (#1699) (@nderjung)
* fa1fc1fd2031466c22ff18b419f9ea17923dec2a: fix(run): Pass workdir when preparing rootfs (#1698) (@nderjung)
* b06b88efc06a0161a7a466763ded74da5d336c6b: fix(scale): Set min size value also when 0 (#1715) (@nderjung)
* d5a26fb1309e757b08ea5d78651602b81700e4c5: fix(volume): Enable read-only mounts for attach (#1765) (@razvand)
* 2a1fcef58123f5b147d6157cbac9f31aeb87ed1c: fix(webinstall): Install and clean 'kraftld' script also (#1700) (@nderjung)
* 4a796725ac2d151fa1cbfea7b41c949c644f682a: fix(workflows): Several fixes to streamline release process (#1725) (@nderjung)
* 8e1eb8fb8a37a4dac26b1b28a5781c33892f2aff: fix: Adds missing cutom created package removal capablity (#1182) (@craciunoiuc)
* d9e0947ad8f3212bedd6ef3be255c3e9c5097b4e: fix: Features and fixes related to 'tools/go-generate-qemu-devices' (#1736) (@nderjung)
* 2f65378cc80d9259c97393f234766242fc8ebb0e: fix: Revert target abstraction to be able to list targets (#1769) (@razvand)
* c57229deff278ca36548914cc26300f0254e51ac: fix: Set UKC as main prefix (#1786) (@craciunoiuc)
### 🤖 Bumps
* bb48ef01806b02f00a66daa16e6edca694d7bc04: build(deps): Bump docker/build-push-action from 5 to 6 (#1742) (@craciunoiuc)
* 81a5940b7cb8448282a12f3a76d2442a6a1e3cb7: gomod(deps): Bump github.com/briandowns/spinner from 1.23.0 to 1.23.1 (#1748) (@nderjung)
* 3b9e42b653bd97aef8c8d019b720a9c5bff7950a: gomod(deps): Bump github.com/charmbracelet/lipgloss from 0.10.1-0.20240413172830-d0be07ea6b9c to 0.11.0 (#1747) (@nderjung)
* a95dd2855ef8a5c14ae27b383daf999938419e22: gomod(deps): Bump github.com/charmbracelet/lipgloss from 0.11.0 to 0.12.1 (#1776) (@craciunoiuc)
* ef3c46718e1be6d5e62c78b241fb5d485a57ecb0: gomod(deps): Bump github.com/cli/cli/v2 from 2.49.0 to 2.51.0 (#1722) (@craciunoiuc)
* 9b047b16deb8511a15f75d1c3c502f04223f369e: gomod(deps): Bump github.com/cli/cli/v2 from 2.51.0 to 2.52.0 (#1746) (@nderjung)
* 71d9b18805649c94bf094b8c85f7ebb7f8492db1: gomod(deps): Bump github.com/compose-spec/compose-go/v2 from 2.1.1 to 2.1.3 (#1738) (@craciunoiuc)
* 87dd542602d7d7ee6a0447b5e608cb28aa898161: gomod(deps): Bump github.com/compose-spec/compose-go/v2 from 2.1.3 to 2.1.4 (#1787) (@craciunoiuc)
* d8ed03e6a0a730f3d4dc2b887154427f81cd3727: gomod(deps): Bump github.com/containerd/containerd from 1.7.17 to 1.7.18 (#1709) (@craciunoiuc)
* 67d1db51ee390ac3c686a5bce45f9b6ec0671323: gomod(deps): Bump github.com/containerd/containerd from 1.7.18 to 1.7.19 (#1758) (@craciunoiuc)
* f4164b52b23e759d490dfa8655cb7a78b64d8a4c: gomod(deps): Bump github.com/containers/image/v5 from 5.30.1 to 5.31.0 (#1691) (@craciunoiuc)
* 7c390a884123a01aaf1d027e15ff62f3889715b7: gomod(deps): Bump github.com/containers/image/v5 from 5.31.0 to 5.31.1 (#1741) (@craciunoiuc)
* 19c586a5c786a25886b5ed7e7266c13f175f166b: gomod(deps): Bump github.com/cyphar/filepath-securejoin from 0.2.5 to 0.3.0 (#1773) (@craciunoiuc)
* f84c6a7a006880ec8d8413de80a8824637a8c97c: gomod(deps): Bump github.com/docker/cli from 26.1.3+incompatible to 26.1.4+incompatible (#1712) (@nderjung)
* e28f9265f38608585749d1911ed0b18d45cc3ec4: gomod(deps): Bump github.com/docker/cli from 26.1.4+incompatible to 27.0.2+incompatible (#1749) (@nderjung)
* da901f54f0b3b02f8780678443e4c69f0d09ee2d: gomod(deps): Bump github.com/docker/cli from 27.0.2+incompatible to 27.0.3+incompatible (#1759) (@craciunoiuc)
* 6066b2308bb6bf48d7653280b396d747daa09fcc: gomod(deps): Bump github.com/docker/docker from 26.1.3+incompatible to 26.1.4+incompatible (#1711) (@craciunoiuc)
* 3cf9c628820337976f28f3e01684ffe8b8e1b27e: gomod(deps): Bump github.com/golang/glog from 1.2.1 to 1.2.2 in /tools/go-generate-qemu-devices (#1778) (@craciunoiuc)
* 14575272bc6d2dfad1f4476432efa63432899dd8: gomod(deps): Bump github.com/golang/glog from 1.2.1 to 1.2.2 in /tools/protoc-gen-go-netconn (#1777) (@craciunoiuc)
* 3e9cd98107648fc7dd27dea2bdb677b461ad00bc: gomod(deps): Bump github.com/google/go-containerregistry from 0.19.1 to 0.19.2 (#1720) (@craciunoiuc)
* a371d2be89357e263006ba7b8f8a3f05cc084642: gomod(deps): Bump github.com/google/go-containerregistry from 0.19.2 to 0.20.0 (#1775) (@craciunoiuc)
* 9a2e773bdd1e0415f764cd55b8843f40ff2b43cb: gomod(deps): Bump github.com/google/go-containerregistry from 0.20.0 to 0.20.1 (#1788) (@craciunoiuc)
* e760b6ce29f6237b97ac5d27e83b75a2c6373e3a: gomod(deps): Bump github.com/opencontainers/runc from 1.1.12 to 1.1.13 (#1740) (@craciunoiuc)
* eec334bda1767390ec133893b98da31f125eca85: gomod(deps): Bump github.com/shirou/gopsutil/v3 from 3.24.4 to 3.24.5 (#1721) (@craciunoiuc)
* 12dec54b7c612d75388e1972d73353fe4d99b98c: gomod(deps): Bump github.com/spf13/cobra from 1.8.0 to 1.8.1 (#1719) (@craciunoiuc)
* 081427225d9219ddba0977991f541ad4969ccf19: gomod(deps): Bump github.com/testcontainers/testcontainers-go from 0.30.0 to 0.31.0 (#1689) (@craciunoiuc)
* ee2fa6471119658bc4766e3095fd6b4382e9d70a: gomod(deps): Bump golang.org/x/oauth2 from 0.19.0 to 0.20.0 (#1690) (@craciunoiuc)
* 1df4f581343af84298aedf7d9acc2cc2498c98de: gomod(deps): Bump golang.org/x/oauth2 from 0.20.0 to 0.21.0 (#1710) (@craciunoiuc)
* e20ba066bae9a3cb5eca8d2711f8c2be67f76299: gomod(deps): Bump golang.org/x/sys from 0.21.0 to 0.22.0 (#1760) (@craciunoiuc)
* bc4527b59ce95c8ddcd89c0e48ab671ffc06a087: gomod(deps): Bump golang.org/x/term from 0.20.0 to 0.21.0 (#1708) (@craciunoiuc)
* ba6aaaabd3c8efe5757662006883e3787227a23e: gomod(deps): Bump golang.org/x/term from 0.21.0 to 0.22.0 (#1757) (@craciunoiuc)
* e553c8e6b791234488d590c5311286ba44db1382: gomod(deps): Bump k8s.io/api from 0.30.2 to 0.30.3 (#1790) (@craciunoiuc)
* 84fae22c90728991445bab0e6b76619fbdbf1a14: gomod(deps): Bump k8s.io/apimachinery from 0.30.1 to 0.30.2 (#1739) (@craciunoiuc)
* c97c6d4d262bcbfcba38e6b104161be0d00a8d0f: gomod(deps): Bump k8s.io/apiserver from 0.30.1 to 0.30.2 (#1737) (@craciunoiuc)
* 482abab4df9b19cd43410ad1232320e84774d067: gomod(deps): Bump k8s.io/apiserver from 0.30.2 to 0.30.3 (#1789) (@craciunoiuc)
* 77c57daac5e332a14359f39c37cd7015a216bcae: gomod(deps): Bump sigs.k8s.io/kustomize/kyaml from 0.17.0 to 0.17.1 (#1692) (@craciunoiuc)
### 🐒 Miscellaneous
* 3d3ee01716fc08c1c13451e73edcff9b0d055922: build: Bump all non-dependabot dependencies (#1683) (@nderjung)
* e728044e971638e5d42006ab0db36b2615db959f: gomod(github-action): Bump 'kraftkit.sh' to the latest version (#1679) (@craciunoiuc)
* 7bf661f5baf348e47e36b14ab05273e15cb2e5c2: gomod(webinstall): Bump 'go' to the latest version (#1681) (@nderjung)
* 901afead29fb52073ee1a18f81c51a7a11816868: refactor(create): Reword (shorten) the "wait for image" text (#1793) (@craciunoiuc)
* 2c2bb31e0d8556f1d1688b050bb3b781bdfd834d: refactor(initrd): Downgrade filesystem operation log messages to trace (#1801) (@craciunoiuc)
* 5371ca7d521a54267d8485c17dbbd1f8f382b490: refactor(initrd): Efficiently pick port to use (#1732) (@nderjung)
* b872719af0953a4fc5679a17b7a596ff2788d0f3: style(cloud): Don't show scale-to-zero info (#1755) (@nderjung)


