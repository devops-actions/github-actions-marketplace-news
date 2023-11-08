---
title: Build unikernel images with Unikraft
date: 2023-11-08 11:04:48 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.7.0
dependentsNumber: "5"
---


Version updated for **unikraft/kraftkit** to version **v0.7.0**.
- This action is used across all versions by **5** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.7.0 (2023-11-08T02:09:50Z)

This is a stable release of kraftkit.

## Changelog
### ⚠️ Breaking Changes
* 3b0fa067b95c844667bee156daddd596d58ea63c: feat!: Introduce OCI multi-image index manifests (#873) (@craciunoiuc)
* 28188d17dc69c9af6c49d2847b7cc3cc438dd3d6: feat!: Upgrade `Kraftfile` specification to v0.6 (#757) (@craciunoiuc)
* bb138e49d5a6707f25648f7726117c12024f1c58: feat(build)!: Invert `--no-pull` to `--force-pull` (#889) (@craciunoiuc)
* edb2ffddf655a6eba908a73c3b2d953ca85b5889: feat(oci)!: Expose index and manifest digests of OCI package columns (#960) (@craciunoiuc)
* 7473688fe1bfb73b274df7ee326397a0a51dbc54: refactor!: Rename package `elfloader` to `runtime` (#974) (@craciunoiuc)
* 6e4bca63e633f3002f11438b04c5c98fda248a08: refactor(kraft)!: Deprecate `properclean` subcommand in favour of flag (#944) (@craciunoiuc)
* 55dd31c63ebe568cc445fd5f03ee681579c2fd9d: refactor(pkg)!: Expose `Workdir`, `Project` and `Strategy` options (#958) (@craciunoiuc)
### 🚀 New Features
* 40848fcc89a89487dee960a44284c0a87ae79f8e: feat(buildenvs): Add initrd creation tools to base container (#807) (@jake-ciolek)
* 22b7b5b178a381ea6650e3099be526d2018686da: feat(buildenvs): Include `cmake` in GitHub Action (#919) (@craciunoiuc)
* aa32a206e6f62b7d52ab65932e7f088acd168300: feat(cmdfactory): Add entry for command aliases in help menu (#886) (@craciunoiuc)
* 723a7a4386a90f382073f49b39a5516fe5819b70: feat(dockerfile-llb-frontend): Set the Entrypoint on LLB images (#780) (@craciunoiuc)
* 0cebf59b46dfb761fa15d5e48ce648faf3832628: feat(e2e): Add 'pkg source/unsource' tests  (#817) (@antoineco)
* 89d897720f8bd2ecf759fe67c41bb47acae508e4: feat(e2e): Add common method for outputting command error (#879) (@craciunoiuc)
* 263f80b28ace857af86b1d9ae67b93dac670980d: feat(e2e): Add tests for the 'net' set of commands (#826) (@antoineco)
* 9053c1eee674a30822a4b45241883e1557096c8d: feat(github-action): Upgrade GitHub Actions (#891) (@craciunoiuc)
* 5115b02817eb8b37acbc01a513ee374aaffb5722: feat(goreleaser): Suggest compiler packages for different arch cases (#827) (@antoineco)
* 05d666f9e75aaf8a9b947ef1c738b311741d78e7: feat(kraft): Add kraft version as first (debug) log entry (#888) (@craciunoiuc)
* 7299009f153d4f2adba005d0a9cb711d47018eee: feat(list): Reduce output and provide `--all` flag to extend it (#945) (@craciunoiuc)
* 72463b0a56f3b782eedb02b19673bf1d1562b3ce: feat(list): Wrap the `Catalog` lookup with a processtree (#937) (@craciunoiuc)
* 20e4e1b416c57d0e8dc0e9d970d6aa34462911b5: feat(oci): Add option to set Directory handler and its path (#845) (@antoineco)
* 99cb86e9108c0bc7b7607b62cbeb25a0235edd03: feat(paraprogress): Add `WithTimeout` option and add ellipsis (#962) (@craciunoiuc)
* 3a23f900459381e70a89234befd41ca09157fd19: feat(paraprogress): Introduce `WithTimeout` option (#961) (@craciunoiuc)
* 0d09e3964273b7e5d9e7e60f254782b15ff076ca: feat(pkg): Introduce `--push` flag (#946) (@craciunoiuc)
* 190f42b8e1d3ff84aa64f7062a9b8e20e780b442: feat(processtree): Introduce `WithHideOnSuccess` option (#934) (@craciunoiuc)
* 1c6d58727aa59cd8ff7466c8f2929a883112f0e3: feat(unsource): Warn if no change done (#814) (@jake-ciolek)
* da029f9a067d7d77506a957ebebc04122620a7df: feat(workflows): Add multi-os stable tests (#839) (@antoineco)
* c0688d5263570d9f8affa3529b245855877f5aac: feat(workflows): Enable tests on self-hosted mac (#918) (@nderjung)
* 89c0b5c8f888bede5a05fadab9d45c3d68c8daf8: feat(workflows): Fail instantly on errors (#869) (@antoineco)
* 0d34b05134ddac55b2563964257d9162c7c9d2fb: feat: Add FreeBSD as a build target for releases (#603) (@antoineco)
* db8feab966bfd5bcdfc56a4d2431f0c3338ebf0d: feat: Add authentication input parameter to GitHub Action (#899) (@craciunoiuc)
* b195eae7860d9fe65877ff293f7e06f6eeba9695: feat: Add complete feature set for devcontainers (#698) (@antoineco)
* c74c39a6dd3e2a82a04e5bc4ca223cd660780507: feat: Add package signing for stable releases (#763) (@nderjung)
* 0565d634f1d5e4805a30526ecf0b6fee5f780cde: feat: Add symbol to specify custom qemu binaries (#870) (@jake-ciolek)
* 947ac80e055e06cafb2c2b3b6d224e62232c92e1: feat: Enable initial Windows support (#846) (@antoineco)
* 19a6f5ec21b9a1f4ba27a7105831bcd1cf218767: feat: Expose merge strategy in GitHub Action (#900) (@craciunoiuc)
* 8588b698d8278e8d473b599fc53424faecc14e54: feat: Handle initrd in fstab entries (#965) (@craciunoiuc)
* 162d1f8db1a67c29005d4dc4e18e00eca00a33d4: feat: Introduce `kraft cloud deploy` (#968) (@razvand)
* 34342b935f7223cf208a8466653519ea3011f22e: feat: Introduce `kraft cloud` subcommand (#852) (@nderjung)
* ad4206dcf91466e8635a82eb29c980fa22fa21da: feat: Introduce `kraft pkg prune` (#663) (@craciunoiuc)
* 5bea74c86bcde70f7ebfb315c86e005504352ab3: feat: runu, OCI runtime for Unikraft unikernels (#791) (@nderjung)
### 🐛 Bug Fixes
* 6e39e7de63765ab154d8840da145436c01c9f664: fix(actions): Pass all environmental variables (#895) (@craciunoiuc)
* d2cff054cae5ff0ae4965e1a9a7818310b68ae85: fix(app): Use template's directory as application directory (#914) (@craciunoiuc)
* 11406a5509b9f13d4249cdaf331209e7d7567c94: fix(archive): Revert list split on separator (#853) (@jake-ciolek)
* 8c596537696a00719908a83c5cebfa2174005ac9: fix(buildenvs): Add `runner` user to GitHub Action image (#917) (@craciunoiuc)
* ed8a28739860d79b0140d9d66fffed4cc902acd4: fix(buildenvs): Include `g++-12` for C++ builds (#893) (@craciunoiuc)
* cf18f161464310fc4adfc2320c53d0b650395d4e: fix(buildenvs): Include g++-12 for C++ builds to GitHub Action (#922) (@craciunoiuc)
* 190dc4eacd8b2b3027849ae7fc54a02c30595cf6: fix(buildenvs): Install cosign for releases (#986) (@nderjung)
* b89b4f4c777d503185f45c63115fe53afc733dd2: fix(ci): linter disable-all does not disable all (#872) (@jake-ciolek)
* a73e1605cb2ee6b334bb5e0b8589edeed17dc89d: fix(cli): Do not initialise config file if path changed (#829) (@antoineco)
* e92446a44adc219d48c06b5bdd2d0a49145dc8d5: fix(cli): Hide fetch command until rework (#975) (@nderjung)
* dc2dc4140b802fb2a026d7afc3a482636fcd7e34: fix(cmdfactory): Do not set `defValue` for integer attributes (#847) (@craciunoiuc)
* d6c1ff5e63483d6ea0e9251a89242730e8a5fc45: fix(cmdfactory): Fix help output (#885) (@craciunoiuc)
* 5b9c370110c1e3c008aba9f6dfe87f1c7f78dd61: fix(github-action): Inherit KraftKit SDK from parent module (#901) (@craciunoiuc)
* 047bc8679d2c6389c8663bd6cd10f0c2b30cff37: fix(github-action): Retrieve the template's components before pull (#915) (@craciunoiuc)
* 77f26807d802ad0ff2642c43b313c9c99ebe049f: fix(github-action): Use the correct cmdfactory prototype for `Run` (#985) (@craciunoiuc)
* 0b6a33b9ad3e236c723421d6bd3faed77eabab44: fix(goreleaser): Enable multi-binary releases (#830) (@craciunoiuc)
* 70fcd698c1b29a688f5edb4d430e8fead97c67eb: fix(goreleaser): Remove silent pushing to detect errors (#806) (@nderjung)
* 472cad2689aa6290c331f620e47e8aca268a12c4: fix(initrd): Add initializers for buildkitd connectors (#931) (@craciunoiuc)
* c9075167553a3d4d5edd26a1682c5c809069dbc4: fix(initrd): Correctly handle CPIO file modes and permissions (#932) (@craciunoiuc)
* f05b84f3feb61ca1072edb1f0545f9068b17273b: fix(initrd): Several small fixes (#957) (@antoineco)
* 2828af2206231eea8dcc5d2e2a6136a035c7c36c: fix(internal): Attribute CLI flags after reading config (#856) (@nderjung)
* db286a7b8794d1a1a0d4b29cb2eaf9f2bd29778d: fix(kconfig): Ensure kconfig options have a value (#862) (@craciunoiuc)
* 78b23a3bfd3089ac04d9cadcddcc5c9dcc64657d: fix(kconfig): Wrap strings with double quotes (#916) (@craciunoiuc)
* 081cb0623be3cd11f78f6811989cac3c1798a037: fix(kraft): Remove ellipsis from processtree invocations (#967) (@craciunoiuc)
* bb21a3a9f479cbdccf1c63e71640d42813130ab4: fix(logs): Use cobra's `ExactArgs` to handle command argumentation (#943) (@craciunoiuc)
* 5aeaca35dba9deb656d8b003fb0fc9d9ccdfca87: fix(machine): Check bridges have ip address (#833) (@jake-ciolek)
* f92f5b2398ae755400389fcc5118e5fff19ea0f6: fix(manifest): Close file before renaming (#948) (@nderjung)
* 8a968df6ffca5b81aaa29b13f4a5fb914ed04be1: fix(manifest): Fallback to archive pull if git fails (#972) (@craciunoiuc)
* dc80d9c4952243c320a706a41b437d63b5917a94: fix(manifest): Fully clone the Git repository (#890) (@antoineco)
* 577c578125743df674d3f301d6188a8b06507f12: fix(menu): Check template pointer before dereference (#906) (@nderjung)
* c87b21b780825c9c4ef88407a46efb7d126c5712: fix(oci): Add filtering capability to package manager (#803) (@craciunoiuc)
* 6c3512a0cef157846cc7d7dfa02639c90bd281e3: fix(oci): Correctly work with digests in the new format (#887) (@nderjung)
* 4dd743283f375df6c4f7356a2b6bae5eb04a1512: fix(oci): Do not use default auths if already provided (#897) (@nderjung)
* d59cd894fded36d007e5c525b776a5f046684ca1: fix(oci): Ensure auth data is not overwritten (#855) (@jake-ciolek)
* f3033de2872c4d7d03c24102eaa9b5f0e0c3827f: fix(oci): Export the correct OCI metadata (#898) (@nderjung)
* ce7a2bbe108cca69ea5fc13f3d9887d410521783: fix(oci): Improve performance of `Catalog` method (#935) (@craciunoiuc)
* faff6eb1dfc6f7a56e98a8626ea288b33248fb54: fix(oci): Initialize the index's descriptor (#959) (@craciunoiuc)
* 41e4e59d1af77ce2d96bf288f0aa1f4f9a1bd514: fix(oci): Set the OCI index as part of `ociPackage` (#902) (@craciunoiuc)
* ba4d382d28fb8eeb7a8c09374fec05aeb86fa008: fix(oci): Use auth when provided (#892) (@nderjung)
* fc9cafbc2339ef33bfc6bc8a271957e18a472d17: fix(paraprogress): Fix outputs less than `LOGLEN` (#969) (@craciunoiuc)
* 0307fe98ca71fcfeada794b1bcdf356111687725: fix(pkg): Add `--force` flag to sourcing and prevent check on unsourcing (#878) (@craciunoiuc)
* 7ef5f5c39ea1bed95a7289b6cb33cb7c9e086233: fix(pkg): Correct the order of the platform/architecture string (#964) (@craciunoiuc)
* 0bd8e384e089ca752ebc858805215d342c8af3a7: fix(pkg): Correctly set package arguments (#983) (@craciunoiuc)
* dddb0c9b8e200531c03dc7002628099ee445c6e8: fix(pkg): Handle offline-first re-packaging (#925) (@craciunoiuc)
* b74ce5e085fb494f8dbb40b46d0855bbc9dddf2e: fix(pkg): Handle single-target runtimes repackaging (#894) (@craciunoiuc)
* c0f0a9c6bb87b66e19e21fede2ba85b78b0d145d: fix(qemu): Hide preamble only for x86_64 (#966) (@nderjung)
* 4941002b3e946355d853d61571931fc6e36ef6f2: fix(run): Add architecture and platform to OCI registry query (#956) (@nderjung)
* 6086736cfd91bc8b1bb418909eb9f134d77a292f: fix(run): Better handling of retrieving and detecting runtime package (#939) (@craciunoiuc)
* 8b03fd582ea42e24d175b66f1df43e13121f3c0b: fix(run): Send finish signal after removing from store (#796) (@jake-ciolek)
* dd1180045b8fa07d933eb346027680ba251d9712: fix(run): When no user args are specified use the package's (#941) (@craciunoiuc)
* 8cf30754d6a0c004050bb6b3ff5ada0499a0bc16: fix(runu): filter default route for v4 family only (#871) (@jake-ciolek)
* 4ebc2962d0bb7c0ccd35f0ad3c01331d23ec68cf: fix(schema): Remove any "v" prefix from the provided spec version (#973) (@craciunoiuc)
* 1b061f7fd2b6756d207eef511827d4e88a334ae0: fix(unikraft): Add additional checks for targets (#976) (@nderjung)
* 0b9df4056ad152cf6eacf4252825453e42eff423: fix(webinstall): Correct use of `makepkg` for Arch Linux (#838) (@craciunoiuc)
* 5d5b4e99c6d9d964660c6718dd50404a43a9d0d1: fix(workflows): Do not match citations on commit messages  (#880) (@antoineco)
* 42635a88379064f5359491fa1243b0ae9279959b: fix(workflows): Merge automated tags through PRs (#844) (@antoineco)
* 8d189de2aa322612de3c8dd253ae08d24f9bafff: fix(workflows): Re-run workflow for GitHub Actions on `action.yml` change (#896) (@craciunoiuc)
* a9f98eb0790fc06b04da650814d85ad707e42660: fix(workflows): Remove `-n` after echo which adds a newline (#987) (@craciunoiuc)
* b4c61f166ade831a725e7c16edebc810f7c4329a: fix(workflows): Set `COSIGN_KEY` from secret (#988) (@razvand)
* 0f0b2ab56912e02427634b57f6a7085208bbc7e1: fix(workflows): Upgrade `golangci-lint` to 1.55.1 and add timeout (#940) (@craciunoiuc)
* 5edc8c56fb0ad4f497e8329b4e847d05de7c865d: fix(wowrkflows): Upgrade `golangci-lint` to v1.54.2 (#938) (@craciunoiuc)
* 4066d0e4f5cbed0e7953a8aa8f646a2380c9ef4e: fix: Fix restoring TUI processtree IOStreams (#933) (@craciunoiuc)
* 76ccb691edb368e8bbb0925b818b853325151ba9: fix: Prevent needless CLI parsing (#884) (@craciunoiuc)
### 📖 Docs
* b2c4903e1b420c9a069a2adddbdbb9eefb890dcf: docs: Update README.md (#971) (@craciunoiuc)
### 🤖 Bumps
* d5247a2cb3eed9351c95e921ea6ce2f018f4803e: build(deps): Bump actions/checkout from 3 to 4 (#789) (@craciunoiuc)
* 4008b7ee58ce97f9c99aa4af4ed0bcd2aac662c6: build(deps): Bump actions/download-artifact from 2 to 3 (#867) (@craciunoiuc)
* 62277923a0ad313fbb0407a6e9f8710b65801843: build(deps): Bump actions/upload-artifact from 2 to 3 (#865) (@craciunoiuc)
* 2dbb3b035203a27c7db9b6140a1450c69cd38e35: build(deps): Bump docker/build-push-action from 4 to 5 (#821) (@craciunoiuc)
* c1d340119c7d82d0855ddbfd2c61df88e00e926b: build(deps): Bump docker/build-push-action from 4 to 5 (#864) (@craciunoiuc)
* d687af4137b42813506dafc4172d17466e18d278: build(deps): Bump docker/login-action from 2 to 3 (#824) (@craciunoiuc)
* 09396f06da9a38eed4f5a43025a7f8fe0de11f22: build(deps): Bump docker/login-action from 2 to 3 (#863) (@craciunoiuc)
* 942e08cd0a078cb6c295f6ce3a867b7f740d0025: build(deps): Bump docker/setup-buildx-action from 2 to 3 (#823) (@craciunoiuc)
* 18906009ac157eecd4f831083d3d7dc753a1688f: build(deps): Bump docker/setup-buildx-action from 2 to 3 (#866) (@craciunoiuc)
* 9ecac6b0a4322c966a593d241c6b7161098c57a5: build(deps): Bump docker/setup-qemu-action from 2 to 3 (#822) (@craciunoiuc)
* a2fc44f30bf098f6dc9f35145faf76a3e5ff1caf: build(deps): Bump docker/setup-qemu-action from 2 to 3 (#882) (@craciunoiuc)
* aa02899dd9ae8d21088b4bc1fc7d039c0be68365: build(deps): Bump github.com/docker/docker from 24.0.4+incompatible to 24.0.7+incompatible in /tools/dockerfile-llb-frontend (#951) (@craciunoiuc)
* 2e05ff23cce8f6ca8d8649e3ff3fa20d8fceee42: build(deps): Bump golang.org/x/net from 0.12.0 to 0.17.0 in /tools/dockerfile-llb-frontend (#876) (@nderjung)
* 5976fe9e2252ffc4caeda247c2927d6d7bcb444d: build(deps): Bump google.golang.org/grpc from 1.53.0 to 1.56.3 in /tools/dockerfile-llb-frontend (#928) (@craciunoiuc)
* 76850ebec8b7ea15c0810aa8c8091a61174ec9eb: build(deps): Bump taskmedia/action-conventional-commits from 1.1.3 to 1.1.4 (#908) (@nderjung)
* f3b42b3ecc68cb5b9795b34e60e68b70cd9b0d44: gomod(deps): Bump kraftkit.sh from 0.6.6 to 0.6.7 in /tools/go-generate-qemu-devices (#825) (@craciunoiuc)
### 🐒 Miscellaneous
* e7b033fce374ea9c395e4fba58076da0c0efee6c: build(webinstall): Switch to distroless base image (#831) (@craciunoiuc)
* 8c1b1251ee71e8fa8af303e9194bdc376d84b921: gomod: Bump Go to v1.21.2 (#874) (@craciunoiuc)
* 909e41a7543dd6fbe118b7d36ef563cb5f78e24d: refactor(cli): Expose CLI actions as reusable methods (#926) (@craciunoiuc)
* e462f9804663c3d68157085dcc9149696efb3fb0: refactor(cli): Suffix all command options with `Options` (#923) (@craciunoiuc)
* 8b365e03ac4491c6cf02b47697a008d48eccf85c: refactor(pkg): Migrate the procedures in `Run` to `Pkg` (#963) (@craciunoiuc)
* 386f2574ea744bbeb762b6d3982f210122c344ba: refactor(update): Run parallel updates and hide on success (#936) (@craciunoiuc)
* cc4875b2da5fdc5ee1a94d7c253ff42335e22a0b: refactor(utils): Reduce output of instance output (#970) (@craciunoiuc)
* 9c09902c990ccf3d29f8616b9936dc9a1ac7fc6d: refactor: Migrate all commands into `internal/cli` (#920) (@craciunoiuc)
* 02a83e3789a97409b679e1fdd7bbfd3fad3e5d80: refactor: Replace unused 'args' with '_' in several commands (#834) (@craciunoiuc)
* 712c84684082d991bb871e3895c0b70cce8b2c4c: test(initrd): assert contents of CPIO archive (#953) (@craciunoiuc)


