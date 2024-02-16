---
title: Get Current Time
date: 2024-02-16 11:23:56 +00:00
tags:
  - josStorer
  - GitHub Actions
draft: false
repo: josStorer/get-current-time
marketplace: https://github.com/marketplace/actions/get-current-time
version: v2.1.2
dependentsNumber: "2,336"
---


Version updated for **josStorer/get-current-time** to version **v2.1.2**.
- This action is used across all versions by **2,336** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/get-current-time) to find the latest changes.

## Release notes

## What's Changed
- bump deps
- update to node20
- update action description

## New Contributors
* @zangbe made their first contribution in https://github.com/josStorer/get-current-time/pull/33

**Full Changelog**: https://github.com/josStorer/get-current-time/compare/v2.1.1...v2.1.2

<hr>

# Get Current Time Github Action

This action sets the current ISO8601 time to the `time` output and also provides `readableTime`, `formattedTime`, and
many more digital outputs like `year`, `day`, `second`, etc. Useful for setting build times in subsequent steps,
renaming your artifact, or keeping the same recorded time for the entire workflow.

You can view some typical input/output in the [action.test.js](./action.test.js) file.

## Inputs

### `format`

Time format to use - using [MomentJS format syntax](https://momentjs.com/docs/#/displaying/format/) - optional

### `utcOffset`

UTC offset to use - using [MomentJS utcOffset syntax](https://momentjs.com/docs/#/manipulating/utc-offset/) - optional

### `timezone`

Timezone to use - check [moment-timezone list](https://gist.github.com/diogocapela/12c6617fc87607d11fd62d2a4f42b02a) -
optional, if set, utcOffset will be ignored, e.g. "America/Los_Angeles"

## Outputs

### `time`

The ISO time this action was run, **not** affected by the parameter `utcOffset`  e.g. '2020-01-01T00:30:15.000Z'

### `ISOTime`

Same as `time`

### `readableTime`

Human-friendly time - affected by the parameter `utcOffset`  e.g. 'Wed Jan 01 2020 08:30:15 GMT+0800'

### `formattedTime`

The time this action was run - formatted using `format` and `utcOffset` inputs

### `year,month,day,hour,minute,second,millisecond`

Digital outputs, just as names

## Example usage

```yaml
steps:
  - name: Get current time
    uses: josStorer/get-current-time@v2
    id: current-time
    with:
      format: YYYYMMDD-HH
      utcOffset: "+08:00"
  - name: Use current time
    env:
      TIME: "${{ steps.current-time.outputs.time }}"
      R_TIME: "${{ steps.current-time.outputs.readableTime }}"
      F_TIME: "${{ steps.current-time.outputs.formattedTime }}"
      YEAR: "${{ steps.current-time.outputs.year }}"
      DAY: "${{ steps.current-time.outputs.day }}"
    run: echo $TIME $R_TIME $F_TIME $YEAR $DAY
```
