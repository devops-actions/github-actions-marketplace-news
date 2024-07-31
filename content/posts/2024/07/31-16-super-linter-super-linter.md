---
title: Super-Linter
date: 2024-07-31 16:47:28 +00:00
tags:
  - super-linter
  - GitHub Actions
draft: false
repo: super-linter/super-linter
marketplace: https://github.com/marketplace/actions/super-linter
version: v6.8.0
dependentsNumber: "2,951"
---


Version updated for **super-linter/super-linter** to version **v6.8.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **2,951** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/super-linter) to find the latest changes.

## Release notes

## [6.8.0](https://github.com/super-linter/super-linter/compare/v6.7.0...v6.8.0) (2024-07-31)


### 🚀 Features

* allow using both prettier and standardjs ([#5679](https://github.com/super-linter/super-linter/issues/5679)) ([2daf461](https://github.com/super-linter/super-linter/commit/2daf461143778318ccc60ba59f175d385f222e4d))
* customize phpstan config file name ([#5940](https://github.com/super-linter/super-linter/issues/5940)) ([20c4df5](https://github.com/super-linter/super-linter/commit/20c4df58c060cf122dce53b14ec578d48d921fb0))
* enable dotenv-linter for slim images ([#5868](https://github.com/super-linter/super-linter/issues/5868)) ([c770a8d](https://github.com/super-linter/super-linter/commit/c770a8d253f8b8852fd3404b63b807d93cc3691a))
* remove no-eslintrc and simplify eslint conf ([#5809](https://github.com/super-linter/super-linter/issues/5809)) ([5be4926](https://github.com/super-linter/super-linter/commit/5be49266330f237f4a8ab2acccffe93b69cf4b04)), closes [#5688](https://github.com/super-linter/super-linter/issues/5688)
* write github actions step summary ([#5867](https://github.com/super-linter/super-linter/issues/5867)) ([57c8658](https://github.com/super-linter/super-linter/commit/57c86588c388a515ae31f498b4cc4a6337169c11)), closes [#5650](https://github.com/super-linter/super-linter/issues/5650)


### 🐛 Bugfixes

* avoid duplicated content in summary ([#5939](https://github.com/super-linter/super-linter/issues/5939)) ([ef57e13](https://github.com/super-linter/super-linter/commit/ef57e132e136ab9991a0cc1517236e827d27baf9))
* store outputs in the main output directory ([#5899](https://github.com/super-linter/super-linter/issues/5899)) ([78ed3ef](https://github.com/super-linter/super-linter/commit/78ed3ef5fc8fe45290b530f94077281d2ac8e634))
* update pylint to ignore import-errors ([#5927](https://github.com/super-linter/super-linter/issues/5927)) ([eec862d](https://github.com/super-linter/super-linter/commit/eec862d0ea33fe6a836dfd545eef1125e530c794))
* update the list of linters to remove ([#5870](https://github.com/super-linter/super-linter/issues/5870)) ([6bd7659](https://github.com/super-linter/super-linter/commit/6bd76596f3f7df70a323eabb797f028293873424))


### ⬆️ Dependency updates

* **bundler:** bump rubocop-minitest in /dependencies ([#5875](https://github.com/super-linter/super-linter/issues/5875)) ([9751e62](https://github.com/super-linter/super-linter/commit/9751e62beed14780ff12fc073c7aa9eafbd449f7))
* **bundler:** bump rubocop-performance in /dependencies ([#5777](https://github.com/super-linter/super-linter/issues/5777)) ([763dcc4](https://github.com/super-linter/super-linter/commit/763dcc4d456ae0c347801d30b5ec00dbfaa60ef2))
* **bundler:** bump rubocop-rspec from 2.30.0 to 3.0.3 in /dependencies ([#5878](https://github.com/super-linter/super-linter/issues/5878)) ([592d903](https://github.com/super-linter/super-linter/commit/592d903c509a4c70c89cc009e74b63c3273c5e7b))
* **dev-docker:** bump node in /dev-dependencies ([#5872](https://github.com/super-linter/super-linter/issues/5872)) ([587fe0a](https://github.com/super-linter/super-linter/commit/587fe0a8b9318324fbfd86b9cd87b0ac6b24ba42))
* **dev-npm:** bump release-please in /dev-dependencies ([#5754](https://github.com/super-linter/super-linter/issues/5754)) ([6bb3f78](https://github.com/super-linter/super-linter/commit/6bb3f789bb5cacff35492a1245befb2fd13b97f5))
* **docker:** bump alpine/helm from 3.14.4 to 3.15.3 ([#5882](https://github.com/super-linter/super-linter/issues/5882)) ([b5bf9f2](https://github.com/super-linter/super-linter/commit/b5bf9f297d13e9563bd708ae98e2e05b9b44698c))
* **docker:** bump alpine/terragrunt from 1.9.0 to 1.9.2 ([#5883](https://github.com/super-linter/super-linter/issues/5883)) ([95feeac](https://github.com/super-linter/super-linter/commit/95feeacb0ab075e7e183c5f8ea1c515992f66bbf))
* **docker:** bump dart from 3.4.2-sdk to 3.4.4-sdk ([#5764](https://github.com/super-linter/super-linter/issues/5764)) ([b75f1cf](https://github.com/super-linter/super-linter/commit/b75f1cfcefc1b62a81b916bd00d0b8dfa7ad69aa))
* **docker:** bump dotnet/sdk ([#5873](https://github.com/super-linter/super-linter/issues/5873)) ([f068663](https://github.com/super-linter/super-linter/commit/f06866359b4158e04825a03d5852823d47d78b05))
* **docker:** bump golangci/golangci-lint from v1.59.0 to v1.59.1 ([#5748](https://github.com/super-linter/super-linter/issues/5748)) ([81ab76d](https://github.com/super-linter/super-linter/commit/81ab76d00179b8d66e7f909c546cb7bfbde8ae9f))
* **docker:** bump goreleaser/goreleaser from v1.26.2 to v2.1.0 ([#5881](https://github.com/super-linter/super-linter/issues/5881)) ([d84d439](https://github.com/super-linter/super-linter/commit/d84d4393933047f08abf0871aacefa04c63b5f32))
* **docker:** bump hashicorp/terraform from 1.8.4 to 1.9.2 ([#5885](https://github.com/super-linter/super-linter/issues/5885)) ([d384e67](https://github.com/super-linter/super-linter/commit/d384e674c729dfd236ce888d04e4bdd24a85b630))
* **docker:** bump mstruebing/editorconfig-checker from v3.0.1 to v3.0.3 ([#5856](https://github.com/super-linter/super-linter/issues/5856)) ([81196f4](https://github.com/super-linter/super-linter/commit/81196f4267199e63ec82dd0aaff9d1f400b38cac))
* **docker:** bump python from 3.12.3-alpine3.20 to 3.12.4-alpine3.20 ([#5884](https://github.com/super-linter/super-linter/issues/5884)) ([8a044b5](https://github.com/super-linter/super-linter/commit/8a044b58dee1dd7a03fcaf2d7d6b58754f156be2))
* **docker:** bump scalameta/scalafmt from v3.8.1 to v3.8.2 ([#5765](https://github.com/super-linter/super-linter/issues/5765)) ([4931da5](https://github.com/super-linter/super-linter/commit/4931da55da35a8b438354adc03d220f693458f75))
* **docker:** bump terraform-linters/tflint from v0.51.2 to v0.52.0 ([#5858](https://github.com/super-linter/super-linter/issues/5858)) ([ae1dba5](https://github.com/super-linter/super-linter/commit/ae1dba53fdc862da0064f56382dd86cd273862f6))
* **docker:** bump yoheimuta/protolint from 0.50.2 to 0.50.3 ([#5857](https://github.com/super-linter/super-linter/issues/5857)) ([913bd0d](https://github.com/super-linter/super-linter/commit/913bd0dd47d3a42d6f2d3acad8fb59c2f185337b))
* **docker:** bump zricethezav/gitleaks from v8.18.3 to v8.18.4 ([#5768](https://github.com/super-linter/super-linter/issues/5768)) ([33bb4b4](https://github.com/super-linter/super-linter/commit/33bb4b46d473c80a82364c50746ed20d19231f90))
* **github-actions:** bump actions/download-artifact from 4.1.7 to 4.1.8 ([#5861](https://github.com/super-linter/super-linter/issues/5861)) ([ed72e66](https://github.com/super-linter/super-linter/commit/ed72e66416df8df15b492f7df00b8621b556893f))
* **github-actions:** bump actions/upload-artifact from 4.3.3 to 4.3.4 ([#5860](https://github.com/super-linter/super-linter/issues/5860)) ([dd4313c](https://github.com/super-linter/super-linter/commit/dd4313c9b3bee70bfd968923e77430f3f19785aa))
* **github-actions:** bump docker/build-push-action from 5 to 6 ([#5770](https://github.com/super-linter/super-linter/issues/5770)) ([27170b8](https://github.com/super-linter/super-linter/commit/27170b8e9243df7e18e59e7c43163b142568ee22))
* **java:** bump com.pinterest.ktlint:ktlint-cli in /dependencies/ktlint ([#5849](https://github.com/super-linter/super-linter/issues/5849)) ([19c5fce](https://github.com/super-linter/super-linter/commit/19c5fcea2ea6a72741e59a30cb815c5faac524be))
* **npm:** bump @babel/eslint-parser in /dependencies ([#5886](https://github.com/super-linter/super-linter/issues/5886)) ([387a2b5](https://github.com/super-linter/super-linter/commit/387a2b56261451b12b00fc37d2fb79766564044d))
* **npm:** bump @babel/preset-react in /dependencies ([#5740](https://github.com/super-linter/super-linter/issues/5740)) ([4eeb628](https://github.com/super-linter/super-linter/commit/4eeb62862e823fd431fefb0078e5605484934254))
* **npm:** bump @babel/preset-typescript in /dependencies ([#5734](https://github.com/super-linter/super-linter/issues/5734)) ([de4b193](https://github.com/super-linter/super-linter/commit/de4b1930064cb6b5f65625101be33892c50d400f))
* **npm:** bump @react-native/eslint-config in /dependencies ([#5835](https://github.com/super-linter/super-linter/issues/5835)) ([28c228d](https://github.com/super-linter/super-linter/commit/28c228dfc0b8279e28ca5bb72a34e9390eca81b9))
* **npm:** bump @typescript-eslint/eslint-plugin in /dependencies ([#5895](https://github.com/super-linter/super-linter/issues/5895)) ([7f5b018](https://github.com/super-linter/super-linter/commit/7f5b018fb7237ef0d6d1cb1578729065bacb4310))
* **npm:** bump eslint-plugin-jest in /dependencies ([#5738](https://github.com/super-linter/super-linter/issues/5738)) ([1312398](https://github.com/super-linter/super-linter/commit/1312398b9c72138ce76f443dd933a8ff82f75fae))
* **npm:** bump eslint-plugin-jsx-a11y in /dependencies ([#5797](https://github.com/super-linter/super-linter/issues/5797)) ([8972772](https://github.com/super-linter/super-linter/commit/89727727323246be93c3ed88c0b0fe1f07e25468))
* **npm:** bump eslint-plugin-react in /dependencies ([#5890](https://github.com/super-linter/super-linter/issues/5890)) ([fe3e1f8](https://github.com/super-linter/super-linter/commit/fe3e1f83b7c7645640af9202bb7f4d8993f088fc))
* **npm:** bump eslint-plugin-vue from 9.26.0 to 9.27.0 in /dependencies ([#5851](https://github.com/super-linter/super-linter/issues/5851)) ([c2e85a9](https://github.com/super-linter/super-linter/commit/c2e85a9f03ceccfe41107ea1e627c8c222b2154a))
* **npm:** bump jscpd from 4.0.4 to 4.0.5 in /dependencies ([#5852](https://github.com/super-linter/super-linter/issues/5852)) ([042c6b1](https://github.com/super-linter/super-linter/commit/042c6b191708878b5db2b5096eadb1b4a6f4f27d))
* **npm:** bump next from 14.2.3 to 14.2.5 in /dependencies ([#5887](https://github.com/super-linter/super-linter/issues/5887)) ([22b7ba9](https://github.com/super-linter/super-linter/commit/22b7ba91d0d273fdc5369d1ead66ae2cee451df0))
* **npm:** bump prettier from 3.3.2 to 3.3.3 in /dependencies ([#5891](https://github.com/super-linter/super-linter/issues/5891)) ([b601212](https://github.com/super-linter/super-linter/commit/b6012126df99c9a8cdc5878bb9417ca7afee6809))
* **npm:** bump react-router-dom from 6.23.1 to 6.25.0 in /dependencies ([#5897](https://github.com/super-linter/super-linter/issues/5897)) ([ef71e94](https://github.com/super-linter/super-linter/commit/ef71e944ab41a8f04ba143f44d4b8443d2d982b5))
* **npm:** bump renovate from 37.421.5 to 37.432.0 in /dependencies ([#5896](https://github.com/super-linter/super-linter/issues/5896)) ([09a01eb](https://github.com/super-linter/super-linter/commit/09a01ebbe6dbb5e502817bb927191b8986c7c912))
* **npm:** bump textlint-rule-terminology in /dependencies ([#5853](https://github.com/super-linter/super-linter/issues/5853)) ([55b065d](https://github.com/super-linter/super-linter/commit/55b065d3c2d512648c52d4d695761a7d274ae769))
* **npm:** bump typescript from 5.4.5 to 5.5.3 in /dependencies ([#5832](https://github.com/super-linter/super-linter/issues/5832)) ([8605c2b](https://github.com/super-linter/super-linter/commit/8605c2b584b36201ac8d1acf98254c2d70776c75))
* **python:** bump ansible-lint in /dependencies/python ([#5877](https://github.com/super-linter/super-linter/issues/5877)) ([e90ee32](https://github.com/super-linter/super-linter/commit/e90ee328a2f6eb42952eeda45929271fddaf0c77))
* **python:** bump cfn-lint from 1.4.2 to 1.6.1 in /dependencies/python ([#5876](https://github.com/super-linter/super-linter/issues/5876)) ([ebf8cc8](https://github.com/super-linter/super-linter/commit/ebf8cc807a6c756755e790419fefcf9e5353b911))
* **python:** bump checkov in /dependencies/python ([#5879](https://github.com/super-linter/super-linter/issues/5879)) ([47392ad](https://github.com/super-linter/super-linter/commit/47392ad6636919b4b21e6ef2c3e1418cb1e931f3))
* **python:** bump flake8 from 7.0.0 to 7.1.0 in /dependencies/python ([#5780](https://github.com/super-linter/super-linter/issues/5780)) ([f019ee3](https://github.com/super-linter/super-linter/commit/f019ee34d21aa778d4b04217e7f717779ddfa767))
* **python:** bump ruff from 0.5.0 to 0.5.2 in /dependencies/python ([#5880](https://github.com/super-linter/super-linter/issues/5880)) ([3fd69a1](https://github.com/super-linter/super-linter/commit/3fd69a107b05f04135f1c01544c50b940a3b1e99))
* **python:** bump snakemake in /dependencies/python ([#5874](https://github.com/super-linter/super-linter/issues/5874)) ([2b6aa12](https://github.com/super-linter/super-linter/commit/2b6aa1290608468ee3828efdeabbeb467be43b80))
* **python:** bump sqlfluff from 3.0.7 to 3.1.0 in /dependencies/python ([#5847](https://github.com/super-linter/super-linter/issues/5847)) ([31da61e](https://github.com/super-linter/super-linter/commit/31da61e1899ca3c9d26681c265b0928b559f1274))


### 🧰 Maintenance

* add super-linter configuration in the bug template ([#5910](https://github.com/super-linter/super-linter/issues/5910)) ([26ddd8b](https://github.com/super-linter/super-linter/commit/26ddd8b084201554e0351abf421d184864076a56))
* authenticate tflint init ([#5894](https://github.com/super-linter/super-linter/issues/5894)) ([cc20e45](https://github.com/super-linter/super-linter/commit/cc20e4561e549c6f6609900ba68602930c01fb7d))
* bump alpine image to 3.20 and php to 8.3.x ([#5863](https://github.com/super-linter/super-linter/issues/5863)) ([d9d1909](https://github.com/super-linter/super-linter/commit/d9d19095ecf48511e4c21a2e23f0def36187d141))
* enable dev-dependencies docker build checks ([#5871](https://github.com/super-linter/super-linter/issues/5871)) ([12da497](https://github.com/super-linter/super-linter/commit/12da4973c69e6987217089a418199a8227f658d7))
* fix docker build warnings ([#5862](https://github.com/super-linter/super-linter/issues/5862)) ([fc094cc](https://github.com/super-linter/super-linter/commit/fc094cc1a4be6a290c49c633fb857c454a98da47))
* print info about the environment, image size ([#5869](https://github.com/super-linter/super-linter/issues/5869)) ([bcf8ca8](https://github.com/super-linter/super-linter/commit/bcf8ca82ad571bb0a04f028193b3f56486cfbeb4))
* remove duplicated configuration files ([#5928](https://github.com/super-linter/super-linter/issues/5928)) ([70e0239](https://github.com/super-linter/super-linter/commit/70e02391170f6aaff4f0b4e80bf9bc8300940171))
* run docker build checks ([#5864](https://github.com/super-linter/super-linter/issues/5864)) ([ce59f5c](https://github.com/super-linter/super-linter/commit/ce59f5c323a8e5038753582dc265ab172b654834))
* split validation logic in smaller functions ([#5892](https://github.com/super-linter/super-linter/issues/5892)) ([d2d7334](https://github.com/super-linter/super-linter/commit/d2d73347d3e49fb28061a41df471afdcf0a579ba))
* update dependabot config for ci/dev updates ([#5898](https://github.com/super-linter/super-linter/issues/5898)) ([e374e48](https://github.com/super-linter/super-linter/commit/e374e489339410662293e39f4147dc69d098077f))
* update release-please to the new workspace ([#5901](https://github.com/super-linter/super-linter/issues/5901)) ([2ecf945](https://github.com/super-linter/super-linter/commit/2ecf94533920fb6a90ba5f029230cd4cdc69f855))
