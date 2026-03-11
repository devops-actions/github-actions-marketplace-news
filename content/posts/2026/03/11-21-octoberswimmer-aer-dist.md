---
title: Run AER Tests
date: 2026-03-11 21:45:37 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.120
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.120**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action provides a streamlined solution for validating Apex code, running unit tests, and simulating a lightweight Salesforce-compatible runtime locally. It automates the testing and debugging of Apex logic without requiring deployment to a Salesforce org, enabling faster and more reproducible development cycles. Key capabilities include executing tests, running specific code paths, and supporting interactive debugging within IDEs like VS Code or IntelliJ.

## Release notes

Version v0.0.120

- Include File Path In Coverage Output

- Implement `WITH RecordVisibilityContext`

- Propagate Static Getter Errors And Fix Shared Union Shadowing

- Precompute Case-Folded Interface And Method Lookups

- Recognize Implicit Object Methods In Interface Implementation Checks

- Fix StubProvider Parameter Bindings And String.join Null Handling

- Fix Email Template relatedTo Type Mismatch And Preserve Resolved Lookup Updates

- Add License Check With 5-minute Shutdown For Unlicensed Server

- Throw TypeException When Stub Returns Incompatible Type

- Fix Stub Return Type Check For Zero-Argument Methods And Format Object As ANY

- Fix Person Account Relationship Field Reads Through SObject.get

- Fix Stub Cast To Incompatible Type To Throw TypeException With Correct Type Name

- Fix Test.setMock To Accept Stub Instances For HTTP Callout Mocks

- Fix Static Property Getter Execution In Symbol-Resolved Access

- Fix HttpRequest String Representation

- Fix HttpRequest.getMethod To Return Null When No Method Is Set

- Reject System Types In Test.createStub

- Reject Classes Without Public Constructors In Test.createStub

- Fetch Rollup Summary Metadata From Tooling CustomField

- Translate Go Regex Errors To Java-Style Messages

- Add Messaging.SendEmailError Status Methods

- Precompute Lowercase Lookup Keys Across Type Checking

- Add Custom Settings FLS With Customize Application Permission Check

- Reject SObject Types In Test.createStub

- Gate CreatedDate Writeability On Audit Field Setting

- Allow Test.createStub For Classes With Protected Constructors

- Add LWC Preview Infrastructure

- Add Go LWC Template Compiler

- Proxy LWC engine to avoid CORS issues

- Fix LWC engine URL to use correct path

- Use bundled @lwc/engine-dom package instead of re-export

- Add LWC Preview To server

- Allow Nested Public Overrides Of Global Abstract Methods

- Throw JSONException When Serializing JSONParser Or JSONGenerator

- Preserve Integer Type In Math.abs

- Preserve SObject Resolution Over Namespaced Type Aliases

- Invoke Stub Provider For toString When Declared By Stubbed Type

- Add enableLightningPreviewPref to Scratch Org Creation

- Add Optional Builtin Health Cloud Schema Support

- Add LWC Wire Adapter Support For @salesforce/apex Methods

- Add --watch Flag For LWC Live Reloading

- Add Preview Button to LWC Details Page

- Make LWC Discovery Async For Immediate Server Startup

- Add Syntax Highlighting to LWC Details Page

- Synthesize Share Types During Type Checking

- Fix Method Overload Resolution For Comparable Array Parameters

- Strip Unicode Flag From Regex Inline Modifiers

- Add Lightning Base Component Support and Imperative Apex Calls

- Allow Polymorphic Share Relationship Assignment

- Check Interface Implementation in Type Name Compatibility

- Add EventRelation to Builtin Schema

- Canonicalize Source Types Before Adding Package Clones

- Add Person Account MiddleName and Suffix Fields

- Require SObject Type Compatibility For Equality

- Fix Intermittent Subquery Ordering Failure With Test.setCreatedDate

- Resolve Rollup Summary Date Types In SObject Field Access

- Fix TypeException Format and List toString() Invocation

- Fix LWC Template Rendering For Conditional Iterators

- Fix Exec Command Type Checking To Match Test Command

- Parse Double Literals With 'd' Suffix and Report Correct Type

- Add Support For Salesforce Schema And Apex Utility Imports

- Add CoverageBenefit Health Cloud Schema And Enforce AccountShare ContactAccessLevel

- Handle IsEmpty Decision Operators In Flow Conversion

- Avoid Queueable Requery Variable Collisions In Flow Conversion

- Use Case-Insensitive String Comparison in Object.equals

- Use Case-Sensitive String Comparison For SObject Field Equality

- Materialize Batchable Generic Signatures In Package Mock Stubs

- Handle Null Return From User-Defined toString In String Concatenation

- Fix LWC Reactivity By Removing All Tracked Fields From Class Body

- Expand Health Cloud Schema Coverage

- Preserve Whitespace In LWC Field Default Value Extraction

- Fix Exception toString Format To Match Salesforce Behavior

- Preserve Name Attribute On Lightning-Input And Remove Debug Logging

- Validate PathOnClient Or ContentUrl On ContentVersion Insert

- Honor aer TypeNotFound Suppression During Relationship Validation

- Fix Subquery Relationship Ordering And Activity Child Relationship Resolution

- Add Profile Permission Fields And Fix Location Component FLS

- Preserve QueryLocator TYPEOF Projections And Canonical Polymorphic Reference Resolution

- Improve Test Watch Performance With AST Caching

- Add DATETIMEVALUE Formula Function Support

- Fix VM Pool Consistency And Permissions For LWC Wire Adapters

- Fix loadStyle To Inject CSS Into Shadow Root

- Fix Concurrent Map Access In Schema DeepCopy And Add OpportunityType Picklist

- Add Lightning Navigation And Mobile Capabilities Mocks

- Harden Flow Conversion And Flow Interview Email Actions

- Add Chatter Free User Profile And License To Default Schema

- Add LWC Multi-Template Support And Utility Module Handling

- Add Static Resource Loading To Core Schema Import

- Add getLocationService To MobileCapabilities Mock

- Add ChangeEventHeader Methods And Fix MetadataRelationship Field Types

- Fix LWC Template Conditionals And Wire Adapter Field Extraction

- Add Lightning Layout And Layout Item Component Transformations

- Add Missing Fields To ContactPoint Objects

- Add Standard Audit Fields To ContactPoint And Related Objects

- Fix IsFromQuery Propagation For Programmatic Relationship Objects

- Fix RecordType And Health Cloud Plan Runtime Semantics

- Add Lightning Button Icon Component With SLDS Utility Icons

- Handle Schema Field References In GetRecord Wire Adapter

- Add Lightning Formatted Date Time Component Transformation

- Fix Nested LWC Conditional Chain Rendering And Add ContactsService

- Add --no-flow-conversion Flag To test Command

- Fix Numeric Formula Field Scale Handling

- Fix Flow Trigger Double Registration Causing Infinite Recursion

- Add Incremental Symbol Resolution And Targeted VM Updates For Watch Mode

- Fix Partial-Save Update Trigger Exception Propagation

- Add Perl-Compatible Regex Support For String.split() And Fix Polymorphic TYPEOF Handling

- Fix Trigger.old Formula Comparisons For Missing Fields

- Preserve Apex Static Caches Across System.runAs

- Add Lightning Slider Component With Event Adapter

- Apply Event Adapter To Lightning Input Component

- Add Lightning MediaUtils Support To LWC Preview

- Fix Apex Utilities RefreshApex Export And Wire Refresh Behavior

- Fix Permission Refresh And Compound Field FLS Regressions

- Fix getSObject() To Return Null For Apex-Created Records With Unset Relationships

- Fix LWC Mixin Inheritance, Wire Reactivity, and Message Service Routing

- Normalize Role Group Filters And Insert Trigger Audit Fields

- Guard Flow RecordUpdate References Against Null Relationship Chains

- Add Property Type Inference and Safe Template Rendering For LWC Preview

- Exclude __tests__ Directories From Component Details Page

- Allow Merge Reparenting For Person Account Contacts

- Add Lightning Carousel Preview Support And Shepherd Image Downloads

- Refactor Lightning Template Transforms Into Per-Component Files

- Add lightning-formatted-email Component

- Fix Instance-Bound LWC Field Defaults And Add Formatted Email Transform

- Initialize Blank LWC Preview Properties And Add Regression Test

- Handle Apex Wire HTTP Errors In LWC Preview

- Implement LWC Spread Directive For Custom Element Props

- Implement LightningFormattedPhone Preview Formatting

- Enable Element-Level LWC If/Else Chains In Template Codegen

- Implement LightningCombobox Preview Support

- Refactor LWC Mock Module Serving And Expand Datatable Preview Support

- Implement LightningDatatable Template Transform For LWC Preview

- Add LightningDatatable Inline Edit Event Adaptation In Preview

- Implement LWC UiRecordApi UpdateRecord Flow In Preview

- Fix Method Argument Evaluation Order And Scheduled Job DST Handling

- Fix LWC Refresh Module Resolution And Preserve NBSP Text

- Add Duplicate Field Detection With Correct Column Position In SOQL

- Implement LightningMessages Template Transform For LWC Preview

- Add Watch Mode Stubs For WASM Builds

- Reject Aggregate Operators On ActivityDate In SOQL Queries

- Implement Record Edit Form And Input Field Support In LWC Preview

- Fix Profile Permission Metadata Persistence And FLS Regression Coverage

- Deduplicate Flow Record Lookup Select Fields

- Stream LWC Discovery Progress Over SSE In Preview

- Implement Quick Action Panel Preview And Robust LDS Wire Handling

- Enforce RunAs File Visibility For Content Queries

- Implement GraphQL API Support For LWC Preview And Wire Runtime Stability

- Apply GraphQL Operation Variable Defaults In LWC Wire Adapter

- Implement Iterator Directive Semantics In LWC Template Compiler

- Fix Implicit FLS Defaults And Permission Cache Regressions

- Preserve Inline Text Spacing In LWC Template Parser

- Preserve Host Utility Classes In LWC Input And Button Transforms

- Preserve Layout Semantics And Host Attributes In LWC Base Component Transforms

- Fix Case-Insensitive Lookup For Schema Field Maps

- Fix Formula Checkbox Transient Defaults And Add Put Regression Coverage

- Support ISO 8601 Timezone Offset Without Colon In Date.valueOf

- Preserve Integer Scale When Assigning To Numeric Fields

- Fix Rest Numeric Dec128 Handling And Lds Create Input Generation

- Stabilize SOAP Deployment Polling In Server Tests

- Fix Opportunity Name Field Label

- Define Deterministic Activity Permission Rules And Metadata Mapping

- Implement LWC Preview Notify Update And Ref Semantics

- Guard LWC Preview Against Utility Bundle Exports

- Use Shallow Field Observation For Undecorated LWC Fields

- Optimize Canonical Lookup Paths

- Fix Polymorphic Content Link Resolution And VM Schema Isolation

- Update digger to v0.22.0

- Fix LWC Preview SVG Rendering, Module Resolution, And Favicon

- Execute After-Save Flows For List DML Insert Operations

- Fix LWC Preview Stylesheet And Font-Face Loading

- Fix LWC Light DOM Render Mode Compilation

- Add Before-Delete Record-Triggered Flow Support

- Fix In-Memory SQLite Pool Lifetime Handling

- Cache Builtin Class Resolution And Tighten Alias Matching

- Stabilize Registration Exchange Test Against Renewal Noise

- Fix Update Panic For Non-Comparable Internal Error Collections

- Log LWC MessageService Publish Calls

- Add LWC Content Asset URL Module Support In Preview

- Preserve Lightning Base Component Hosts In LWC Preview

- Add LWC User Module Support In Preview

- Use Canonical Field Metadata For Formula Projection Aliasing

- Add LWC I18n Module Support In Preview

- Preserve Contact Mailing Fields During Merge Reparenting

- Add LWC Lightning Logger Pub/Sub Event Stream Support

- Fix Lightning Button Host Class Fallback In LWC Preview

- Merge Optional Health Cloud Picklist Metadata

- Add Lightning Modal Support In LWC Preview

- Add Health Cloud Dependency Objects To Optional Schema

- Fix LWC Static Resource Source-Format File Resolution

- Add Lightning Notification Module Support In LWC Preview

- Fix FieldDefinition MetadataRelationship Resolution Using QualifiedApiName

- Add LWC Custom Permission Module Support In Preview

- Add ContactPointConsent ID Prefix To Standard Objects

- Add Lightning Page Reference Utils Module Support In LWC Preview

- Bypass FLS For Standard Fields Name, RecordTypeId, And OwnerId

- Fix Record Edit Form Value Hydration And Save Cache Sync In LWC Preview

- Add Lightning Record Form Support In LWC Preview

- Fix Person Account Field Reads For Explicit Null Updates

- Preserve Full Precision For In-Memory Currency And Numeric Fields

- Add Lightning Record Picker Support In LWC Preview

- Support Lightning Pill Container And Record Picker Dedupe In LWC Preview

- Fix Fiscal Year Date Literal SQL Generation And Add Comprehensive Tests

- Add NEXT_WEEK Date Literal Support

- Add Lightning Record View Form And Output Field Support In LWC Preview

- Add NEXT_MONTH Date Literal Support

- Add NEXT_YEAR Date Literal Support

- Support Component-Relative CSS Module Imports In LWC Preview

- Add LAST_90_DAYS And NEXT_90_DAYS Date Literal Support

- Add LAST_N_YEARS And NEXT_N_YEARS Date Literal Support

- Fix Lightning Input Toggle Transform And Host Spacing In LWC Preview

- Route Static Custom-Element API Values Through Props In LWC Preview

- Add LAST_N_QUARTERS And NEXT_N_QUARTERS Date Literal Support

- Add LAST_N_MONTHS And NEXT_N_MONTHS Date Literal Support

- Fix getSObject On Nested Relationships After Formula Hydration

- Export CurrentPageReference Wire Adapter In Navigation Mock

- Add LAST_N_WEEKS Date Literal Support

- Fix Person Account Trigger Snapshot And Queried Fallback Semantics

- Add NEXT_QUARTER Date Literal Support

- Add FISCAL_MONTH And FISCAL_QUARTER Function Support

- Stabilize Lightning Host QuerySelector And ObjectInfo Wire Behavior In LWC Preview

- Implement Lightning Tree Transform And Expanded Nested Rendering In LWC Preview

- Fix LAST_N_DAYS, NEXT_N_DAYS, And N_DAYS_AGO Date Literal Boundaries

- Add Task.IsArchived Field And Mark As Read-Only

- Implement Session-Backed OAuth User Selection And Identity Resolution

- Make Event.OwnerId Polymorphic By Adding Calendar Reference

- Fix Relationship Alias Field Semantics And Comparable List Sort Resolution

- Validate Mock Module Imports And Wire Dependency Rechecks In LWC Preview

- Implement UIListApi Wire Adapter And Mock Module Support In LWC Preview

- Implement PlatformWorkspaceApi Support And Preview Console Toggle

- Resolve Polymorphic Relationship Type Qualifiers In SQL And VM

- Improve PlatformWorkspaceApi Tab Mock Logging And Focus Cycling

- Implement Incremental Apex Reloading In Server Watch Mode

- Fix Blob Subquery Materialization For Content Document Relationships

- Fix Package Loading With `server`

- Add Frontdoor Session Login Route For Browser Auth

- Enable Server Command Outside Dev Builds

- Allow Empty Object Maps In JSON Field Deserialization

- Validate LWC Preview Component Default Export Type

- Fix Field Assignment On Map Instances From JSON Deserialization

- Fix Polymorphic Type Field In WHERE Clause For Multi-Reference Relationships

- Stabilize LWC Wire Config Updates And Expand Coverage

- Use Picklist Position Ordering For MIN/MAX Aggregate Functions

- Stabilize LWC Preview Rendering And Template Reconciliation

- Update BatchApexWorker Child Job Status To Completed After Execute

- Fix `server --default-namespace`

- Load CustomNotificationType Metadata From Source And Packages

- Throw SObjectException For Numeric To Date Field Assignments

- Add Record Access Checking For ContentVersion Visibility Filter

- Use MISSING_ARGUMENT Status Code For Update Without Id

- Stabilize LWC Preview Module Resolution And Add Parser Profiling

- Bump Memory Dependency To v1.11.0-octoberswimmer.5

- Handle Null Id Bind Range Comparisons In SOQL

- Support Lightning Menu Controls And Add Preview Module Revalidation

- Cache Compiled LWC Preview Modules For Fast Revalidation

- Fix memory Dependency

- Grant Implicit Read Access To Audit Fields In DescribeFieldResult

- Handle Activity As A Non-Queryable Abstract Type

- Support Lightning Tile Preview And Fix LWC Class Field Grammar

- Add DataWeave Numeric Conversion And List To Set Assignment

- Fix Subquery ORDER BY For Decimal Fields With Negative Values

- Stabilize LWC Preview Wire Adapters And Datatable Contracts

- Preserve EnableHistory Metadata And Histories Relationships

- Return idInstance From SObject Id Field Access For Proper Comparison

- Convert DataWeave Temporal Types To Apex Instances

- Stabilize Synthetic Namespace Schema Merge Order

- Virtualize ContentNote Storage And Remove Id Counter Registry

- Add ContentNote Virtual Query View; Fix Update Row Index

- Add Missing Contact Name Fields And Stabilize Person Account Missing-Field Test

- Fix Polymorphic Owner Field

- Track Effective Sharing Mode Per Frame And Stabilize runAs Enforcement

- Prefer Group Before User For Custom Object Owner References

- Preserve User Type Shadowing In Static Resolution

- Add apex-dml-mocking to test-third-party Target

- Keep Nested Type Context Separate From Package Namespace
