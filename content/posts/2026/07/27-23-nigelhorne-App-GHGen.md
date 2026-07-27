---
title: GHGen Workflow Analyzer
date: 2026-07-27 23:12:46 +00:00
tags:
  - nigelhorne
  - GitHub Actions
draft: false
repo: https://github.com/nigelhorne/App-GHGen
marketplace: https://github.com/marketplace/actions/ghgen-workflow-analyzer
version: v7
dependentsNumber: "8"
actionType: Composite
actionSummary: |
  GHGen Workflow Analyzer automates the process of generating, analyzing, and optimizing GitHub Actions workflows. It automatically detects project types based on file indicators and provides a variety of features to improve workflow performance, security, and cost efficiency. Users can interactively customize workflows, apply fixes, estimate costs, and integrate with GitHub actions to maintain their CI pipelines seamlessly.
---


Version updated for **https://github.com/nigelhorne/App-GHGen** to version **v7**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghgen-workflow-analyzer) to find the latest changes.

## Action Summary

GHGen Workflow Analyzer automates the process of generating, analyzing, and optimizing GitHub Actions workflows. It automatically detects project types based on file indicators and provides a variety of features to improve workflow performance, security, and cost efficiency. Users can interactively customize workflows, apply fixes, estimate costs, and integrate with GitHub actions to maintain their CI pipelines seamlessly.

## What's Changed

	[ Bug Fixes ]
	- Added matrix exclusion for windows-latest + perl 5.40.  The
	  shogo82148/build-perl perl-5.40.4-thr-win32-x64.zip ships a perl.exe
	  and a libperl540.a from two different builds: any XS module compiled
	  against that libperl540.a (handshake key 0x12c00080) mismatches the
	  running perl.exe (needs 0x12d00080).  Even Win32::Process — a core
	  Windows XS module bundled in the zip and loaded by IPC::System::Simple
	  — fails to load, so no XS-using test can pass on this combination.
	  The previous workaround (cpanm --reinstall YAML::XS) cannot help
	  because the compilation itself uses the broken libperl540.a.
	  Exclusion is emitted only when both 'windows-latest' and '5.40' are
	  in the matrix; custom OS or Perl lists that omit either are unaffected.
	  See https://github.com/shogo82148/actions-setup-perl/issues/2310 for further information.
	- Added defensive Windows step "Reinstall YAML::XS against current Perl"
	  (`cpanm --notest --reinstall YAML::XS`) to ensure a freshly compiled
	  YAML::XS.dll lands in site/lib (which precedes the bundled lib in @INC)
	  for cases where the shogo82148 Perl zip bundles a stale XS DLL and the
	  toolchain (perl.exe + libperl.a) is internally consistent.
	- Removed .github/workflows/perl-ci.yml from the cache key. Including the workflow file
	  hash caused unnecessary full cache invalidation on every comment or whitespace edit to
	  the workflow; it provided no meaningful safety guarantee beyond the cpanfile hash.
	- Strengthened the cache key further: a dedicated cross-platform step (shell: perl {0})
	  fingerprints the actual Perl binary files using unpack('%32C*',...) + read() so no
	  extra CPAN modules are needed. On Windows the Perl runtime DLL (e.g. perl540.dll) is
	  also read alongside perl.exe. The checksum combined with $Config{archname} is appended
	  to $Config{version} to form the final cache key.
	  Rationale: Strawberry Perl occasionally re-releases the same Perl version (e.g. 5.40.0)
	  with a recompiled DLL that changes the XS handshake key but leaves $Config{version}
	  unchanged. Reading the binary detects any such change without requiring Digest::MD5.
	  (An earlier Digest::MD5->addfile approach failed on some runners with "Can't use an
	  undefined value as filehandle reference"; read + unpack avoids that entirely.)
