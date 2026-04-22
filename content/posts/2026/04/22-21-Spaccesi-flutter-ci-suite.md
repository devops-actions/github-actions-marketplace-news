---
title: Flutter Actions Suite
date: 2026-04-22 21:24:38 +00:00
tags:
  - Spaccesi
  - GitHub Actions
draft: false
repo: https://github.com/Spaccesi/flutter-ci-suite
marketplace: https://github.com/marketplace/actions/flutter-actions-suite
version: v0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Spaccesi/flutter-ci-suite** to version **v0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/flutter-actions-suite) to find the latest changes.

## Action Summary

This GitHub Action provides a comprehensive CI/CD solution for building, testing, and deploying Flutter applications across multiple platforms, including iOS, Android, Web, macOS, Windows, and Linux. It automates tasks such as environment setup, code generation, static analysis, testing, platform-specific builds, and deployment to various app stores and hosting services. The action supports both an all-in-one pipeline for end-to-end automation and modular workflows for customizable integration.

## What's Changed

Flutter CI/CD Actions Suite — First Release                                                                                                                                         
                                                                                                                                                                                      
A composable GitHub Actions library for Flutter multi-platform CI/CD. Use the full pipeline in a single step, or wire up individual actions for full control over your workflow.  
                                                                                                                                                                                      
What's included
                                                                                                                                                                                      
  - Prepare — Flutter setup, flutter pub get, build_runner, and gen-l10n code generation.                                                                                             
  - Check — Static analysis, formatting, dependency license validation, and unit/widget tests with optional coverage reports.
  - Build — Signed builds for iOS, Android (APK + App Bundle), Web, macOS, Windows, and Linux.                                                                                        
  - Publish — Deployment to:                                                                                                                                                          
    - iOS & macOS → App Store Connect                                                                                                                                                 
    - Android → Google Play Store                                                                                                                                                     
    - iOS & Android → Firebase App Distribution                                                                                                                                     
    - Web → Firebase Hosting, GitHub Pages                                                                                                                                            
    - Linux → Snap Store                                                                                                                                                              
    - Windows → Microsoft Store
                                                                                                                                                                                      
Highlights                                                                                                                                                                        

  - Single-action full pipeline or fully modular — use only what you need.                                                                                                            
  - Automatic code signing for iOS and macOS (certificates, provisioning profiles, installer identity).
  - Android keystore signing out of the box.                                                                                                                                          
  - Parallel multi-platform builds via a two-phase job pattern (prepare once, build all platforms concurrently).                                                                    
  - Monorepo support via Flutter workspaces.   
