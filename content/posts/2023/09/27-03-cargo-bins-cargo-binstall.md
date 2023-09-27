---
title: Install cargo-binstall
date: 2023-09-27 03:10:35 +00:00
tags:
  - cargo-bins
  - GitHub Actions
draft: false
repo: cargo-bins/cargo-binstall
marketplace: https://github.com/marketplace/actions/install-cargo-binstall
version: v1.4.1
dependentsNumber: "9"
---


Version updated for **cargo-bins/cargo-binstall** to version **v1.4.1**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **9** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-cargo-binstall) to find the latest changes.

## Release notes

_Binstall is a tool to fetch and install Rust-based executables as binaries. It aims to be a drop-in replacement for `cargo install` in most cases. Install it today with `cargo install cargo-binstall`, from the binaries below, or if you already have it, upgrade with `cargo binstall cargo-binstall`._

[[Reddit](https://www.reddit.com/r/rust/comments/16t5odf/cargo_binstall_141_with_initial_support_for/)] [[Bluesky](https://bsky.app/profile/passcod.bsky.social/post/3kadmsdwhig2e)] [[Twitter](https://twitter.com/passcod/status/1706835150057943288)] [[Masto](https://mastodon.social/@passcod/111134400743640105)]

#### In this release:
- **Initial support for verifying package signatures!** (#1 #1345 #1382 #1383)
  
  After a lot of discussions, we now support verifying signatures for downloaded files. This release has support for a single algorithm, [minisign](https://jedisct1.github.io/minisign/). We expect to implement more later, and would warmly welcome contributions in this regard.

  With this comes two new options: `--only-signed` will refuse to install non-signed packages, and `--skip-signatures` disables the functionality entirely (for testing only!).

  Adding signature support for your package as a first party requires adding to your Cargo.toml: we don't perform auto-detection of signature schemes at this juncture. Documentation and a guide is available in [SIGNING.md](https://github.com/cargo-bins/cargo-binstall/blob/main/SIGNING.md).

  The 3rd-party quick-install repository of packages (part of the cargo-bins umbrella organisation) has already implemented signing; if you only want first-party signed packages you should add `--disable-strategies quick-install`.

- **Binstall's releases are now signed.** (#1347 #1398 #1400)

  We use a just-in-time ephemeral key or "keyless" setup which generates a brand new signing key for every release.

  You can find the public key for each release in a number of places:
  - in the crate's Cargo.toml metadata (this is where Binstall looks for it)
  - as the `minisign.pub` file in the packaged source crate (from crates.io)
  - as the `minisign.pub` file in the downloads below
  - as the `minisign.pub` file in the `.full.` variants of the packages below

  Of course, Binstall ^1.4.1 is able to verify its own signature:
  ```console
  cargo binstall -y --only-signed cargo-binstall
  ```

#### Other changes:

- The `cargo-toml-workspace` crate is now independent from binstalk crates (#1386)
- Bugfix: target was incorrectly detected for glibc <=2.31 (#1376 #1379)
