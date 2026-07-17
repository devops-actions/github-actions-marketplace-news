---
title: GHGen Workflow Analyzer
date: 2026-07-17 22:36:08 +00:00
tags:
  - nigelhorne
  - GitHub Actions
draft: false
repo: https://github.com/nigelhorne/App-GHGen
marketplace: https://github.com/marketplace/actions/ghgen-workflow-analyzer
version: v6
dependentsNumber: "6"
actionType: Composite
actionSummary: |
  GHGen Workflow Analyzer is a GitHub Action that automates the process of generating, analyzing, and optimizing CI workflows. It automatically detects project types and generates workflows with caching, security, concurrency, and best practices built-in. It also analyzes existing workflows for performance bottlenecks, outdated actions, missing security permissions, and wasted CI minutes, and applies safe, intelligent fixes or opens a clean pull request with improvements.
---


Version updated for **https://github.com/nigelhorne/App-GHGen** to version **v6**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghgen-workflow-analyzer) to find the latest changes.

## Action Summary

GHGen Workflow Analyzer is a GitHub Action that automates the process of generating, analyzing, and optimizing CI workflows. It automatically detects project types and generates workflows with caching, security, concurrency, and best practices built-in. It also analyzes existing workflows for performance bottlenecks, outdated actions, missing security permissions, and wasted CI minutes, and applies safe, intelligent fixes or opens a clean pull request with improvements.

## What's Changed

	[ Bug Fixes ]
	- Approved https://github.com/nigelhorne/App-GHGen/pull/6
	  Missing unescaped $ failed to interpolate variable into double-quoted string
	  Thanks to https://github.com/chromatic
	- Fixed enable_linter_unused having no effect when set to 1 via the non-interactive code
	  path. The POD Params::Validate block (default => 0) is documentation only; the actual
	  runtime default was the // 0 on the assignment line (line 286). Changed to // 1.

	[ New Features ]
	- Added Perl syntax linting step to generated workflows (enable_linter, default: on)
	  Uses shell: perl {0} so it runs cross-platform without OS-specific branching.
	  Searches lib/ and bin/, uses do $file with a stub @INC handler for every .pm file,
	  and covers every matrix cell (all OS × Perl version combinations).
	  No extra CPAN dependencies required.
	- Added unused-variable check (enable_linter_unused, default: on). The check is embedded
	  inside the lint step and runs PERL5OPT=-Mwarnings::unused prove -lr t/ so variable
	  lifetimes are exercised at runtime (perl -c is compile-only and cannot detect unused
	  vars). Gated on RUNNER_OS == Linux and continue-on-error: true.
	- Added import-hygiene check (enable_perlimports, default: on). Installs App::perlimports
	  and runs perlimports --lint across all .pm files under lib/. Scoped to latest Perl +
	  ubuntu-latest; continue-on-error: true so it is advisory rather than blocking.
	- Both enable_linter_unused and enable_perlimports are exposed in the interactive
	  --customize prompt for Perl workflows under the "Code Quality Tools" heading.
	- Regression test added in t/pull_6.t for the PR #6 cost-display bug fix.
	- Tests added/extended in t/linter.t covering presence/absence, ordering, and
	  platform-gating of all lint-stage steps.
	- Added t/extended_tests.t: 99 branch-coverage tests targeting uncovered paths across all
	  8 modules (Analyzer, CostEstimator, Detector, Fixer, Generator, Interactive,
	  PerlCustomizer, Reporter). Flags Analyzer::has_deployment_steps as dead code (defined
	  but not exported and not called from analyze_workflow).

	[ CI Matrix ]
	- Default Perl matrix is now 5.36, 5.38, 5.40, 5.42 (max_perl_version bumped from
	  5.40 to 5.42). Perl::Critic, perlimports, and coverage steps are now gated on
	  5.42 (always the latest version in the matrix).
	- Perl 5.44 added to the known-versions table as an opt-in. Projects wanting to test
	  against 5.44 before it becomes the default can pass max_perl_version => '5.44' to
	  generate_custom_perl_workflow, or set perl_versions explicitly. No code change
	  needed on the caller's side.
	- POD for generate_custom_perl_workflow updated: max_perl_version default corrected to
	  5.42, opt-in examples for 5.44 added under the max_perl_version item.
