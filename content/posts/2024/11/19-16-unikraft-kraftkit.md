---
title: Build unikernel images with Unikraft
date: 2024-11-19 16:48:05 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.9.3
dependentsNumber: "9"
---


Version updated for **unikraft/kraftkit** to version **v0.9.3**.
- This action is used across all versions by **9** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.9.3 (2024-11-19T15:59:38Z)

This is a stable release of kraftkit.

## Changelog
### 🚀 New Features
* e44ef1eeb6e2bd05845c81abe4b4b03c50c86d11: feat(action): Add option to skip building (#1960) (@nderjung)
* c2596c6d3797ab2e4d4c1ab613b7c37bae2bb2cd: feat(buildenvs): Add 'gomplate' to the github action (#1907) (@nderjung)
* 4847d17724f99847c73960f9a314d5b96a49dc0d: feat(cloud): Add option to prompt select metro (#1891) (@nderjung)
* a12857e2ccd19f4ee2eca8ad13fbff1ecb31aaec: feat(deploy): Expose the entrypoint flag (#1868) (@craciunoiuc)
* c71f600be5147104a6376c35cd0234f1237f4ff0: feat(initrd): Support Dockerfile secrets, targets and build arguments (#1870) (@craciunoiuc)
* 0208c45b9a6cd35732bbf4895ab8ca510ccfed85: feat(kconfig): Introduce `Walk` and minor fixes (#1855) (@craciunoiuc)
* c8f5da5ad8d039a36211c78575d1f4c319a9464e: feat(kraft): Introduce global CPU profiling env var (#1865) (@craciunoiuc)
### 🐛 Bug Fixes
* f9a339632a9c0009c17692d9f14f41fe4b59927e: fix(cloud): Also pass volumes when deploying (#1947) (@nderjung)
* 5cc772a50326d3d147c7894a05f11ad5e5ac56e7: fix(cloud): Small fixes for compose commands (#1871) (@nderjung)
* b918178146f67c9d1d61847cc750bfd158b5ebbf: fix(initrd): Ensure proper ordering and checks of (docker)files (#1964) (@craciunoiuc)
* e08cf57049fadcdb5248f324073160fd9a763bfe: fix(initrd): Remove check to allow different formats (#1957) (@marcrittinghaus)
* 442234bc41bc4ac6318cb76da99a616703c0568a: fix(initrd): Use `stat` as a more robust mechanic for checking a file (#1963) (@craciunoiuc)
* f145484bfdb3905b7a2a27a8793a3c5f92e12475: fix(internal): Add sanity check for empty runtime (#1915) (@nderjung)
* 0d5eff76f704d22c127c9b6f320a5773667ed0b1: fix(internal): Check if volume is populated also (#1962) (@nderjung)
* 547a32478e3469c8680c0ca025b051ef9d7f967d: fix(internal): Only set options if not set on cli (#1916) (@nderjung)
* 16864a9e31e3c9d9cef8d76fbfc166e2b039e077: fix(machine): Also register option and disable passthrough (#1948) (@nderjung)
* eda0526558668d26f2361a8151dabb567f97de19: fix(machine): Disable passthrough to allow sudo-less runs (#1946) (@nderjung)
* bbc12f356abcce2e0ed8cda7a1c73205847ab585: fix(oci): Remove creation time for consistent hashes (#1869) (@nderjung)
* 984d042c3a55a8bdd604ff168977d240d6b49975: fix(qemu): Correctly forward multiple ports (#1961) (@nderjung)
* 8497e2256cbffbdb6423658d4783ce040da3d12f: fix(workflows): Bump upload action before deprecation (#1956) (@nderjung)
* d919e8f2844bf9634ed4513638f5a9498448789e: fix(workflows): Set context when building dockerfile (#1866) (@nderjung)
### 🤖 Bumps
* 31fc4d28ece2ac11462fe07c4a653d8cb79d3012: build(deps): Bump github.com/opencontainers/runc from 1.1.12 to 1.1.14 in /tools/dockerfile-llb-frontend (#1884) (@craciunoiuc)
* 1ad10540b4912c0a3774b8cc5b71f889cb51156c: build(deps): Bump taskmedia/action-conventional-commits from 1.1.17 to 1.1.18 (#1893) (@craciunoiuc)
* f02a533111e7a08c4373c01dcc9b2b1980a3ea3a: build(deps): Bump taskmedia/action-conventional-commits from 1.1.18 to 1.1.19 (#1928) (@craciunoiuc)
* 21e48cd5a2b2569802ac41e77014744dabcd7673: build(deps): Bump tj-actions/changed-files from 44 to 45 (#1864) (@craciunoiuc)
* fff87e3518cabae264dd159190fa6b450f6d442e: gomod(deps): Bump github.com/Masterminds/semver/v3 from 3.2.1 to 3.3.0 (#1881) (@craciunoiuc)
* eeaadcc0d6b36b5d913819dc76de4420cafdf23a: gomod(deps): Bump github.com/Masterminds/sprig/v3 from 3.2.3 to 3.3.0 in /tools/go-generate-qemu-devices (#1872) (@craciunoiuc)
* 641fc9a2a62045f0cf7dbfc5320c8bbd16bacf0c: gomod(deps): Bump github.com/Masterminds/sprig/v3 from 3.2.3 to 3.3.0 in /tools/protoc-gen-go-netconn (#1873) (@craciunoiuc)
* 2abfc01ca997a9df6d80e3d0d60f4423877fd03c: gomod(deps): Bump github.com/charmbracelet/bubbles from 0.18.0 to 0.19.0 (#1858) (@craciunoiuc)
* 626488693bd9ac0fae4d8b33deb88e294ac044d8: gomod(deps): Bump github.com/charmbracelet/bubbles from 0.18.0 to 0.20.0 (#1902) (@craciunoiuc)
* 35fadfa35bf32a414cdc49da7fca8163a2a91084: gomod(deps): Bump github.com/charmbracelet/bubbletea from 0.25.0 to 0.27.1 (#1860) (@craciunoiuc)
* 2490458b9007ea1309d68ba3c1d2244855b92362: gomod(deps): Bump github.com/charmbracelet/bubbletea from 0.25.0 to 1.1.0 (#1876) (@craciunoiuc)
* 859184aca16bea0d43d071061df018118d76086a: gomod(deps): Bump github.com/charmbracelet/bubbletea from 1.1.0 to 1.1.1 (#1890) (@craciunoiuc)
* 7a8394f89f0e17ac641f5b68669c3b97a0bf38cd: gomod(deps): Bump github.com/charmbracelet/bubbletea from 1.1.1 to 1.2.2 (#1952) (@craciunoiuc)
* d1687e1268afd993eecddbd36518a436a3706c01: gomod(deps): Bump github.com/charmbracelet/lipgloss from 0.12.1 to 0.13.0 (#1862) (@craciunoiuc)
* f92a9ba312383676693dec5e2e68460053bce3a6: gomod(deps): Bump github.com/cli/cli/v2 from 2.54.0 to 2.55.0 (#1874) (@craciunoiuc)
* 8f1abb7714af550f2c4becfa14f686c18b9cec7b: gomod(deps): Bump github.com/compose-spec/compose-go/v2 from 2.1.6 to 2.2.0 (#1895) (@craciunoiuc)
* 0256750b141af7e5620c035368ddee06a1c95fd9: gomod(deps): Bump github.com/compose-spec/compose-go/v2 from 2.2.0 to 2.3.0 (#1921) (@craciunoiuc)
* 01b5863f75ec5ab56127a77e2049209fcd430b97: gomod(deps): Bump github.com/containerd/containerd from 1.7.20 to 1.7.22 (#1889) (@craciunoiuc)
* 6eb3d3ed8f2b62e8b84e615c460e8835a8ed69e5: gomod(deps): Bump github.com/containerd/containerd from 1.7.22 to 1.7.23 (#1924) (@craciunoiuc)
* f0cf3ad4d131234bdff94176f91da5311a970443: gomod(deps): Bump github.com/containerd/nerdctl from 1.7.6 to 1.7.7 (#1901) (@craciunoiuc)
* d9f04ef42b6458216e4ada0b2cde7fd118496a4f: gomod(deps): Bump github.com/containers/image/v5 from 5.31.1 to 5.32.2 (#1883) (@craciunoiuc)
* 5a3788ae7cfbd06205cf5ec8e03bc5e66327c556: gomod(deps): Bump github.com/cyphar/filepath-securejoin from 0.3.1 to 0.3.2 (#1903) (@craciunoiuc)
* 0d6082287e88ecf5f855b97fb9b89f8add5982e7: gomod(deps): Bump github.com/cyphar/filepath-securejoin from 0.3.2 to 0.3.4 (#1919) (@craciunoiuc)
* 19eb3a16ee35d5da018d006662ee0e0ffb44ad2d: gomod(deps): Bump github.com/docker/cli from 27.1.2+incompatible to 27.2.1+incompatible (#1887) (@craciunoiuc)
* 588b5719526ff178287fc9601f4f927c76db3161: gomod(deps): Bump github.com/docker/cli from 27.2.1+incompatible to 27.3.1+incompatible (#1904) (@craciunoiuc)
* 5ad435eef4feeca45af05f3f1e952872a3ca1a90: gomod(deps): Bump github.com/docker/docker from 26.1.5+incompatible to 27.1.2+incompatible (#1861) (@craciunoiuc)
* 2ccc09d37261b23ba2dcd1aaf520259283a20658: gomod(deps): Bump github.com/docker/docker from 27.1.2+incompatible to 27.3.1+incompatible (#1918) (@craciunoiuc)
* 6f795aa9aabeff217e24902f5606bfa8c0c28a5d: gomod(deps): Bump github.com/henvic/httpretty from 0.1.3 to 0.1.4 (#1912) (@craciunoiuc)
* 10721bf416a4d075bb7557871558117afad91208: gomod(deps): Bump github.com/moby/buildkit from 0.14.1 to 0.17.0 (#1935) (@nderjung)
* e6149f0d456b8d33126936dd0b7802bb6c28d620: gomod(deps): Bump github.com/onsi/ginkgo/v2 from 2.19.1 to 2.20.2 (#1875) (@craciunoiuc)
* bfedd6596c15e8ac46e46e79a83c1fee7efa5b71: gomod(deps): Bump github.com/onsi/ginkgo/v2 from 2.20.2 to 2.21.0 (#1954) (@craciunoiuc)
* 59967a163ef169d8203473607ca499e3beb19768: gomod(deps): Bump github.com/onsi/gomega from 1.34.0 to 1.34.1 (#1859) (@craciunoiuc)
* b1ac9e0a6624efdabc3c4f81b2addc59a854716d: gomod(deps): Bump github.com/onsi/gomega from 1.34.1 to 1.34.2 (#1878) (@craciunoiuc)
* 152fa53ac4836b6e190ad338342871467a6c5f3e: gomod(deps): Bump github.com/onsi/gomega from 1.34.2 to 1.35.1 (#1938) (@nderjung)
* 0743f633b1013ea3a2223b67cafd85050c5c0a34: gomod(deps): Bump github.com/opencontainers/runc from 1.1.13 to 1.1.14 (#1880) (@craciunoiuc)
* a1d9c6f6d83693b3a17c47a30a04602bfae90dbd: gomod(deps): Bump github.com/opencontainers/runc from 1.1.14 to 1.1.15 (#1926) (@craciunoiuc)
* d488cd5d5bfebe74436226c1891f63112e6a47a2: gomod(deps): Bump github.com/opencontainers/selinux from 1.11.0 to 1.11.1 (#1923) (@craciunoiuc)
* 99c017a632fe162abb166c0cf935f4658657009b: gomod(deps): Bump github.com/testcontainers/testcontainers-go from 0.33.0 to 0.34.0 (#1937) (@nderjung)
* 2a7791729ad5fa4417097f6398b0bdcca4adbdb3: gomod(deps): Bump github.com/vishvananda/netlink from 1.2.1-beta.2.0.20231127184239-0ced8385386a to 1.3.0 (#1910) (@craciunoiuc)
* 768076364d13a02706aa3ff43635a3001f097275: gomod(deps): Bump golang.org/x/oauth2 from 0.21.0 to 0.23.0 (#1882) (@craciunoiuc)
* 054b2a31dfa0332cf4dd429ba0600bfb2c0d0f74: gomod(deps): Bump golang.org/x/term from 0.23.0 to 0.24.0 (#1886) (@craciunoiuc)
* 4d90ccd3fe20ce74d83da346e5bc8d64a4a7193d: gomod(deps): Bump golang.org/x/term from 0.24.0 to 0.25.0 (#1909) (@craciunoiuc)
* b511dd03902e8d7cf1dbadc895392fae73e91594: gomod(deps): Bump golang.org/x/term from 0.25.0 to 0.26.0 (#1955) (@craciunoiuc)
* 479ba10e9021377b804538fff55e1e718a26bc5f: gomod(deps): Bump google.golang.org/grpc from 1.65.0 to 1.67.0 (#1897) (@craciunoiuc)
* 22545bcfe7023602b95b205765702c3133ec3daf: gomod(deps): Bump google.golang.org/grpc from 1.67.0 to 1.67.1 (#1917) (@craciunoiuc)
* 767729cafb1cfdfa30fc94e7eb7ea063a2aeeaab: gomod(deps): Bump google.golang.org/protobuf from 1.34.1 to 1.35.1 in /tools/protoc-gen-go-netconn (#1922) (@craciunoiuc)
* 6f866c4443f893da7fccb5e5cb657a2d6c676890: gomod(deps): Bump google.golang.org/protobuf from 1.35.1 to 1.35.2 in /tools/protoc-gen-go-netconn (#1950) (@craciunoiuc)
* f7ff627e16de47dd658968e848c4626731942b86: gomod(deps): Bump k8s.io/api from 0.30.5 to 0.30.6 (#1931) (@nderjung)
* 51efc0520c7660dac362d78deabfcd035295f555: gomod(deps): Bump k8s.io/apimachinery from 0.31.0 to 0.31.1 (#1911) (@craciunoiuc)
* b21794b45195da00b26bc63ec11a3700be3d28cb: gomod(deps): Bump k8s.io/apimachinery from 0.31.1 to 0.31.2 (#1933) (@nderjung)
* e94f7d1b07b6f7f047edb47c36039bc3ce1fedd1: gomod(deps): Bump k8s.io/apiserver from 0.30.3 to 0.30.5 (#1920) (@craciunoiuc)
* 52336b714629efbd46b05ae980de508579061f3e: gomod(deps): Bump k8s.io/apiserver from 0.30.5 to 0.30.6 (#1930) (@nderjung)
* 9aa75d107478787d68c4984f4c444b4818c780b6: gomod(deps): Bump kraftkit.sh from 0.9.1 to 0.9.2 in /tools/go-generate-qemu-devices (#1863) (@craciunoiuc)
* aace7b47afe1446ea5abccefe6c493f30eecfead: gomod(deps): Downgrade 'bubbletea' and its deps (#1867) (@nderjung)
* 29b1d30082365a884dc1fdc5eb48c356aad38481: gomod(deps): bump github.com/compose-spec/compose-go/v2 from 2.3.0 to 2.4.4 (#1941) (@nderjung)
* 7953f5612f7524efcbe89de5571f3d1baf98fbaf: gomod(deps): bump github.com/containerd/errdefs from 0.3.0 to 1.0.0 (#1939) (@nderjung)
* f9a01f172e2324cf1563e3b4e9ef718d3c1bf723: gomod(deps): bump github.com/golang/glog from 1.2.2 to 1.2.3 in /tools/go-generate-qemu-devices (#1944) (@craciunoiuc)
* 31accb706687686b596a6ff105b8ba3a550068bd: gomod(deps): bump github.com/golang/glog from 1.2.2 to 1.2.3 in /tools/protoc-gen-go-netconn (#1943) (@nderjung)
* 559f283dfbc7ed8fa54c038aa1a92aa03f9f1584: gomod(deps): bump github.com/opencontainers/runc from 1.1.15 to 1.2.1 (#1940) (@nderjung)


