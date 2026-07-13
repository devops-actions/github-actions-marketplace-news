---
title: Aeroflare CI
date: 2026-07-13 11:40:40 +00:00
tags:
  - ItzEmoji
  - GitHub Actions
draft: false
repo: https://github.com/ItzEmoji/aeroflare
marketplace: https://github.com/marketplace/actions/aeroflare-ci
version: v1.8.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action automates the caching and pushing of Nix build outputs to an OCI registry from CI. It uses the `aeroflare` tool to generate OCI images with store paths as tags, enabling fast lookups in container registries. This action streamlines the process for developers by handling cache management and OCI image creation automatically.
---


Version updated for **https://github.com/ItzEmoji/aeroflare** to version **v1.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aeroflare-ci) to find the latest changes.

## Action Summary

The GitHub Action automates the caching and pushing of Nix build outputs to an OCI registry from CI. It uses the `aeroflare` tool to generate OCI images with store paths as tags, enabling fast lookups in container registries. This action streamlines the process for developers by handling cache management and OCI image creation automatically.

## What's Changed

## [1.8.0](https://github.com/ItzEmoji/aeroflare/compare/v1.7.0...v1.8.0) (2026-07-13)


### Features

* **action:** add composite action entrypoint ([eb60e04](https://github.com/ItzEmoji/aeroflare/commit/eb60e0489ddf6f7c87cee5127ec437ac5052cfbe))
* **action:** add shared shell helpers for the composite action ([8662c0b](https://github.com/ItzEmoji/aeroflare/commit/8662c0b0ac96c8706182633fa8c1b4d5b9461d28))
* **action:** download and verify the attested aeroflare-ci binary ([0821f3e](https://github.com/ItzEmoji/aeroflare/commit/0821f3e62a4c434982dcc029ddbcb1a00347b1bc))
* **action:** publish a JSON Schema for .aeroflare-ci.yaml ([5e2c89d](https://github.com/ItzEmoji/aeroflare/commit/5e2c89df1028ac10fa98a92c91f31db84bc596d5))
* **action:** validate action modes and build the aeroflare-ci argv ([734058c](https://github.com/ItzEmoji/aeroflare/commit/734058cb5220b9f49c657238d53d72f6f61331d7))
* add cmdutil.Factory, error sentinels, and test helpers ([0f697da](https://github.com/ItzEmoji/aeroflare/commit/0f697da7485d688ac16cb6604cbd55f6d3797323))
* add install and install-release tasks with PREFIX support ([37743ee](https://github.com/ItzEmoji/aeroflare/commit/37743ee846586783d14e087c795323a4f45fc316))
* add pkg/iostreams to replace package-level print helpers ([8dbd7a1](https://github.com/ItzEmoji/aeroflare/commit/8dbd7a18161279824aae67c6987f1135c7225e84))
* bake version into binary via ldflags instead of embedded JSON ([9e86ef7](https://github.com/ItzEmoji/aeroflare/commit/9e86ef72e2b0a5ac491dc5d030dd153feb8a9fe7))
* **cache:** add Group for querying several upstream caches as one ([a5638f4](https://github.com/ItzEmoji/aeroflare/commit/a5638f4d5d2fbb0dbc47f7566730a7990c553704))
* ci action ([c4ff07a](https://github.com/ItzEmoji/aeroflare/commit/c4ff07afe8ed2cb49e9ee235f133bfd507eb6460))
* **ci:** accept a list of upstream caches in config and inputs ([b84c144](https://github.com/ItzEmoji/aeroflare/commit/b84c14413ca68d82a0be5c6b4743f58706f67119))
* **ci:** accept http(s):// scheme in cache registry ([964b474](https://github.com/ItzEmoji/aeroflare/commit/964b474f86f6981a3a3d37ecc03c75f0b2713ecd))
* **ci:** add aeroflare-ci command entry point ([aefd515](https://github.com/ItzEmoji/aeroflare/commit/aefd5152bda8dfdbb8201c4211a0f80ff2607639))
* **ci:** add plain CI reporter ([bc1f103](https://github.com/ItzEmoji/aeroflare/commit/bc1f103462593aa0164897379d09bccd2cbbfbd6))
* **ci:** build installables and scrape store paths ([ef15661](https://github.com/ItzEmoji/aeroflare/commit/ef156614c26f102061f06a4f652ba219064c73d3))
* **ci:** load config file and merge inline inputs ([9ed791d](https://github.com/ItzEmoji/aeroflare/commit/9ed791d329fa02174f8c896ca66d823097b3aa41))
* **ci:** make --upstream-cache repeatable ([756de43](https://github.com/ItzEmoji/aeroflare/commit/756de43c1b45ba49381b28c0aabb8f550a3cdb5a))
* **ci:** orchestrate builds and multi-cache pushes ([1a3976c](https://github.com/ItzEmoji/aeroflare/commit/1a3976c00fa78844a281689428de035c24ebbc49))
* **ci:** parse cache specs and resolve per-host tokens ([156f5fe](https://github.com/ItzEmoji/aeroflare/commit/156f5fea653898e73c7017dceb76dbbe5e98b2bd))
* **ci:** proxy-accelerated build, prepare-once, push-to-all pipeline ([1541297](https://github.com/ItzEmoji/aeroflare/commit/15412979eb01ead4f6b7df394195bfe857c57967))
* **ci:** reject build entries that are mis-indented action inputs ([98dfd4a](https://github.com/ItzEmoji/aeroflare/commit/98dfd4a0883984f92eb4ed5113d5e7ad66c36d0b))
* **ci:** resolve signing key from env material or path ([5532037](https://github.com/ItzEmoji/aeroflare/commit/553203784fe9c9e68fe02eba1352bf84042bed98))
* **ci:** route builds through proxy and dedup store paths ([a28ef6e](https://github.com/ItzEmoji/aeroflare/commit/a28ef6e112f53bab3b747fa1b356f48b301b97c4))
* **ci:** skip build outputs already served by an upstream cache ([a37ef02](https://github.com/ItzEmoji/aeroflare/commit/a37ef022e0bd3abcdcda63d537cb9d20fd704224))
* **oci:** add a go-containerregistry auth seam ([0c01f9f](https://github.com/ItzEmoji/aeroflare/commit/0c01f9f89004f0f8de28e7ef5501474e8b255580))
* print build date in aeroflare version output ([15ce46e](https://github.com/ItzEmoji/aeroflare/commit/15ce46e9a5178b802f6b02c7c360181d3bee4dc1))
* **push:** add prepare-once / push-to-many engine split ([93f3b26](https://github.com/ItzEmoji/aeroflare/commit/93f3b263631d68704eb460aa24dbaef7eafcd26f))


### Bug Fixes

* action scripts and ci pipeline in order to provide a better user experience ([d78ce38](https://github.com/ItzEmoji/aeroflare/commit/d78ce38d99cde3e868930d9d7930f8de6674dfa2))
* **action:** split upstream-cache into one flag per entry ([519eb9d](https://github.com/ItzEmoji/aeroflare/commit/519eb9d607969236d3a32c53f8edb1e3eb913eb0))
* bind --cache-url against root's flags, not the invoked subcommand's ([8273f41](https://github.com/ItzEmoji/aeroflare/commit/8273f41ef51b34b777f7c3e84db26666fb858aa9))
* **ci:** push the CI credential as a password, not a bearer token ([c2f1780](https://github.com/ItzEmoji/aeroflare/commit/c2f17804d52fd44326877374395347703fdcb594))
* **ci:** scope proxy lifetime to the build phase only ([1625362](https://github.com/ItzEmoji/aeroflare/commit/16253629e3294be5913532f40f082405ef9301f8))
* **ci:** stop reporting a filtered closure as the full closure ([6309ab8](https://github.com/ItzEmoji/aeroflare/commit/6309ab8ef5ceb7a1de629e258af8a776f8c6a253))
* **ci:** upload only paths absent from every upstream cache ([b5655ac](https://github.com/ItzEmoji/aeroflare/commit/b5655ac1ab6d7d65ddfe86fee73384cf60ef7da5))
* correct dotfile depth-check and tar-write atomicity in script/build.go ([675c7e2](https://github.com/ItzEmoji/aeroflare/commit/675c7e2c1bf2819fbdd2a3ea171e3c4a4c3112dd))
* extract aeroflare-ci from the bin/ path inside release archives ([c435e38](https://github.com/ItzEmoji/aeroflare/commit/c435e38119c8db9f7cdbcc422c11df4e7c346852))
* keep the "no value found" context when auth get fails to resolve a field ([72e1384](https://github.com/ItzEmoji/aeroflare/commit/72e13843f89afb058cc12d4d0cc26b103ed0cf63))
* restore the global viper binding so --cache-url and AEROFLARE_* work again ([2c41e38](https://github.com/ItzEmoji/aeroflare/commit/2c41e3844d5e563b1fd63ce8d79ab8d1762d74dd))
* restore usage output on flag and argument errors ([4bbb66a](https://github.com/ItzEmoji/aeroflare/commit/4bbb66a2440affdf187693de0a1be679799027bc))
* return an error from GetRegistryAndRepository instead of exiting the process ([5fb8c01](https://github.com/ItzEmoji/aeroflare/commit/5fb8c015ccfcd5849d1065c39fb44da817883006))
* show usage on argument errors for auth get, set, and remove ([d4c0117](https://github.com/ItzEmoji/aeroflare/commit/d4c01172e3ba05f6fb3034f0181f9945647eaa6d))
