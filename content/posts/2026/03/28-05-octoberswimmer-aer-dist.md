---
title: Run AER Tests
date: 2026-03-28 05:57:57 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.134
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.134**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action enables users to validate and test Salesforce Apex code in a lightweight, Salesforce-compatible runtime without deploying to a Salesforce org. It automates the execution of Apex tests in CI/CD pipelines, providing fast, reproducible test cycles and support for debugging and focused test execution. Key capabilities include running test suites, individual code paths, and interactive debugging, as well as handling SObject metadata for accurate simulation of Salesforce behavior.

## Release notes

Version v0.0.134

- Allow Static And Instance Fields With Same Name In Same Class

- Add --visualize Flag For Test Execution Tracing (dev build only)

- Fix Method Visibility Check For Overloaded Methods

- Allow Assignable Element Types In Ternary List Expressions

- Add Platform Event Support In Server Mode With Unified Event Bus

- Allow Child Relationship Assignment To Single SObject

- Restrict SOQL Field Alias Keywords

- Fix Ternary Expressions With Child Relationships And SOQL Queries

- Add Polymorphic Child Relationships For Custom Objects

- Exclude Static Methods From Instance Method Ambiguity Check

- Return List<AggregateResult> For GROUP BY Queries Without Aggregate Functions

- Add Tests For GROUP BY Returning AggregateResult

- Add CostBook Object And Expand Pricebook2 And OpportunityLineItem Schema

- Allow Casting SOQL Query Results To Single SObject

- Type History Object OldValue And NewValue As Object

- Distinguish Constructors From Methods With Same Name

- Treat Array And List Parameter Types As Equivalent In Override Validation

- Allow Larger Values In Percent Field Validation

- Queue PublishImmediately Platform Events During Test Execution

- Add Delivery Tracking For Platform Events on /dev/events

- Fix List Element Type Matching To Prevent Numeric Widening

- Restore Class Inheritance Check For List Element Type Matching
