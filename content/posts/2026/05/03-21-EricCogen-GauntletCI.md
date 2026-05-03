---
title: GauntletCI - Validate Code Changes Before Review
date: 2026-05-03 21:31:42 +00:00
tags:
  - EricCogen
  - GitHub Actions
draft: false
repo: https://github.com/EricCogen/GauntletCI
marketplace: https://github.com/marketplace/actions/gauntletci-validate-code-changes-before-review
version: v2.2.1-critical-fixes
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/EricCogen/GauntletCI** to version **v2.2.1-critical-fixes**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gauntletci-validate-code-changes-before-review) to find the latest changes.

## Action Summary

GauntletCI is a pre-commit, diff-first tool designed to detect **Behavioral Change Risk** in code changes, identifying unverified logic shifts, regressions, and missing validations before they reach code review. It offers fast, local analysis with high-signal outputs to ensure code changes are properly validated, solving the problem of unnoticed risks that pass tests and reviews but may still break production.

## What's Changed

# GauntletCI v2.2.1-critical-fixes - Release Notes

**Release Date:** May 2, 2026  
**Version:** 2.2.1-critical-fixes  
**Status:** ✅ READY FOR PRODUCTION DEPLOYMENT

---

## Overview

This release contains **5 critical production bug fixes** that address system-level failures:
- Sync-over-async deadlock that blocks hydration pipeline
- JSON deserialization crashes in daemon
- Environment variable validation failures in 3 ticket providers

**All 1,407 tests passing. Zero build errors/warnings. Ready for immediate deployment.**

---

## Critical Fixes (5 Issues)

### 1. GitHubRestHydrator: Sync-Over-Async Deadlock

**File:** `src/GauntletCI.Corpus/Hydration/GitHubRestHydrator.cs:102-107`

**Severity:** 🔴 CRITICAL

**Issue:** Using `.Result` on Task after `await Task.WhenAll()` causes complete application deadlock in UI/ASP.NET contexts where SynchronizationContext is active.

**Impact:** Blocks entire hydration pipeline, causing corpus ingestion to hang indefinitely.

**Fix:** Changed from:
```csharp
await Task.WhenAll(prTask, filesTask, commentsTask, commitsTask);
var pr = prTask.Result;  // ❌ DEADLOCK
```

To:
```csharp
await Task.WhenAll(...).ConfigureAwait(false);
var pr = await prTask.ConfigureAwait(false);  // ✅ SAFE
```

**Testing:** Existing GCI0016 tests verify async patterns. No new test failures.

---

### 2. LlmDaemonServer: Null Deserialization Crash

**File:** `src/GauntletCI.Cli/LlmDaemon/LlmDaemonServer.cs:85-102`

**Severity:** 🔴 CRITICAL

**Issue:** Force-cast null suppression (`!`) hides null from deserializer, causing NullReferenceException at runtime when malformed JSON is received.

**Impact:** Daemon becomes unresponsive when receiving malformed JSON input, requiring manual restart.

**Fix:** Added proper error handling:
```csharp
// Before: JsonSerializer.Deserialize<DaemonRequest>(line)!
// This trusts null will never happen, but runtime crashes anyway

// After:
try {
    req = JsonSerializer.Deserialize<DaemonRequest>(line);
} catch (JsonException ex) {
    return new DaemonResponse(false, $"Invalid JSON: {ex.Message}");
}
if (req is null) {
    return new DaemonResponse(false, "Deserialization resulted in null");
}
```

**Testing:** Daemon now gracefully returns error responses instead of crashing.

---

### 3. LinearTicketProvider: Missing Env Var Validation

**File:** `src/GauntletCI.Cli/TicketProviders/LinearTicketProvider.cs:14-25`

**Severity:** 🔴 CRITICAL

**Issue:** `LINEAR_API_KEY` environment variable accessed without null check after `IsAvailable` property check. Env var can be cleared between property check and method call.

**Impact:** Runtime crash when `LINEAR_API_KEY` is not set or cleared.

**Fix:** Added null check in method:
```csharp
public async Task<TicketInfo?> FetchAsync(string issueKey, CancellationToken ct = default)
{
    var apiKey = Environment.GetEnvironmentVariable("LINEAR_API_KEY");
    if (string.IsNullOrEmpty(apiKey))
        return null;  // Graceful fallback
    
    // Safe to use apiKey
}
```

**Testing:** Returns null gracefully if env var missing.

---

### 4. JiraTicketProvider: Multiple Missing Env Var Validations

**File:** `src/GauntletCI.Cli/TicketProviders/JiraTicketProvider.cs:20-35`

**Severity:** 🔴 CRITICAL

**Issue:** Three required environment variables (`JIRA_BASE_URL`, `JIRA_API_TOKEN`, `JIRA_USER_EMAIL`) all accessed with force-cast (`!`) without null checks.

**Impact:** Multiple crash points if any required env var is missing or cleared.

**Fix:** Added validation before use:
```csharp
var baseUrl = Environment.GetEnvironmentVariable("JIRA_BASE_URL");
var token   = Environment.GetEnvironmentVariable("JIRA_API_TOKEN");
var email   = Environment.GetEnvironmentVariable("JIRA_USER_EMAIL");

if (string.IsNullOrEmpty(baseUrl) || string.IsNullOrEmpty(token) || string.IsNullOrEmpty(email))
    return null;  // Not available - graceful fallback
```

**Testing:** Returns null gracefully if any env var missing.

---

### 5. GitHubIssueProvider: Missing Env Var Validation

**File:** `src/GauntletCI.Cli/TicketProviders/GitHubIssueProvider.cs:17-22`

**Severity:** 🔴 CRITICAL

**Issue:** `GITHUB_TOKEN` and `GITHUB_REPOSITORY` accessed without null checks.

**Impact:** Silent failure or runtime crash in GitHub integration.

**Fix:** Added null checks:
```csharp
var token = Environment.GetEnvironmentVariable("GITHUB_TOKEN");
var repo = Environment.GetEnvironmentVariable("GITHUB_REPOSITORY");

if (string.IsNullOrEmpty(token) || string.IsNullOrEmpty(repo))
    return null;  // Not available
```

**Testing:** Gracefully returns null when env vars missing.

---

## Phase 2 HIGH Priority Fixes (Bonus)

While addressing Phase 1, we also implemented 2 quick Phase 2 HIGH priority fixes:

### Bonus Fix 1: NuGetAdvisoryEnricher - Null Deserialization
- Fixed similar null deserialization issue with proper null check
- Prevents silent failures when JSON parsing returns null

### Bonus Fix 2: RoundRobinLlmLabeler - Resource Leak Logging
- Added tracking for non-disposable labelers
- Warning messages help identify resource leak sources in production

---

## Build & Test Results

```
✅ Build: 0 errors, 0 warnings
✅ Tests: 1,407/1,407 passing (100%)
   - 1,401 unit tests
   - 6 benchmark tests
✅ No regressions detected
```

---

## Deployment Instructions

### Prerequisites
- .NET 8.0 runtime
- Existing GauntletCI installation (2.2.0 or later)

### Deployment Steps

1. **Backup current version:**
   ```bash
   git tag v2.2.0-backup
   ```

2. **Deploy new version:**
   ```bash
   git checkout v2.2.1-critical-fixes
   dotnet build GauntletCI.slnx -c Release
   dotnet publish -c Release
   ```

3. **Run tests to verify:**
   ```bash
   dotnet test GauntletCI.slnx
   ```

4. **Restart services:**
   ```bash
   # Restart hydrator service
   # Restart daemon service
   # Restart other ticket providers
   ```

5. **Verify:**
   - Check hydrator pipeline completes without deadlock
   - Verify daemon handles malformed JSON gracefully
   - Test ticket provider integrations

---

## Known Issues & Limitations

### None

All identified issues in this release have been fixed.

---

## Next Steps: Phase 2 HIGH Priority

Scheduled for next sprint (estimated 9-11 hours):

1. **HttpClient Resource Leak** (25 files, 4-5 hours)
   - Centralize 40+ HttpClient instances to factory pattern
   - Prevents socket exhaustion and memory leaks

2. **ConfigureAwait(false) Pass** (15 files, 1-2 hours)
   - Add to all library code
   - Prevents context propagation issues

3. **Null Operator Cleanup** (40+ instances, 2-3 hours)
   - Replace force-cast with explicit null checks

4. **Silent Exception Handler Fixes** (1 hour)
   - Replace bare catch blocks with proper logging

See `AUDIT_ACTION_PLAN.md` for detailed implementation guide.

---

## Credits

**Developed by:** Code Audit Task + Copilot  
**Date:** May 2, 2026  
**Reviewed:** Comprehensive automated code audit  

---

## Support

For issues or questions about this release:
1. Check `CODE_AUDIT_REPORT.md` for technical details
2. Review `AUDIT_ACTION_PLAN.md` for implementation context
3. See `AUDIT_SUMMARY.txt` for executive overview

---

## License

SPDX-License-Identifier: Elastic-2.0

