---
title: Sylius Upgrade Analyzer
date: 2026-04-06 14:05:22 +00:00
tags:
  - pierrearthurdemengel
  - GitHub Actions
draft: false
repo: https://github.com/pierrearthurdemengel/sylius-upgrade-analyzer
marketplace: https://github.com/marketplace/actions/sylius-upgrade-analyzer
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pierrearthurdemengel/sylius-upgrade-analyzer** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sylius-upgrade-analyzer) to find the latest changes.

## Action Summary

The Sylius Upgrade Analyzer is a CLI tool designed to automate and streamline the migration of Sylius projects from version 1.x to 2.x. It identifies breaking changes, deprecated APIs, and incompatible patterns, generating a detailed migration report with fix suggestions, time estimates, and 41 automated corrections for common tasks. By reducing manual effort and ensuring comprehensive coverage based on official documentation, it simplifies the upgrade process and minimizes errors.

## What's Changed

  ## What's New                                                                                                            
                                                                                                                             
  **29 new auto-fixers** for exhaustive Sylius 2.0 migration coverage. Total: **41 fixers**.                                 
                                                                                                                           
  ### High Confidence (11 new)                                                                                               
  CalendarToClock, ClassMove, BundleConfig, DeprecatedBundlePackage, UserEncoder, ApiEndpointRestructure, RemovedRoute,    
  PaymentRequestEnv, RoutingImport, RemovedConfigKey, RemovedClass                                                           
   
  ### Medium Confidence (18 new)                                                                                             
  TranslationKey, BehatContext, ApiSerializationGroup, ApiQueryExtensionSignature, FormTypeExtensionPriority,              
  OrderProcessorPriority, DeprecatedEmailManager, AdminMenuEvent, ServiceDecorator, RemovedPaymentGateway,                   
  ShippingCalculator, PromotionRuleChecker, PayumConfig, GridCustomization, ResourceBundle, ApiPlatformMigration
                                                                                                                             
  ### Usage                                                                                                                
                                                                                                                           
  ```yaml
  - uses: pierrearthurdemengel/sylius-upgrade-analyzer@v1
    with:                                                                                                                    
      project-path: '.'
      fail-on-breaking: 'true'                                                                                               
      upload-sarif: 'true'                                                                                                 
                                                                                                                           
  Stats                                                                                                                      
   
  - 47 analyzers, 41 fixers, 6 reporters                                                                                     
  - 665 tests, 1815 assertions                                                                                             
  - PHPStan level 8 clean                                                                                                  

  Web Service

  Professional PDF reports at https://sylius-upgrade-analyzer.dev
