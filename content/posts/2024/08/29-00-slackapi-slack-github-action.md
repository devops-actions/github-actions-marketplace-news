---
title: slack-send
date: 2024-08-29 00:52:17 +00:00
tags:
  - slackapi
  - GitHub Actions
draft: false
repo: slackapi/slack-github-action
marketplace: https://github.com/marketplace/actions/slack-send
version: v1.27.0
dependentsNumber: "0"
---


Version updated for **slackapi/slack-github-action** to version **v1.27.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slack-send) to find the latest changes.

## Release notes

## What's changed

This release introduces an optional `payload-delimiter` parameter for flattening nested objects with a customized delimiter before the payload is sent to Slack Workflow Builder when using workflow webhook triggers.

```diff
  - name: Send a custom flattened payload
    uses: slackapi/slack-github-action@v1.27.0
+   with:
+     payload-delimiter: "_"
    env:
      SLACK_WEBHOOK_URL: ${{ secrets.SLACK_WEBHOOK_URL }}
```

Setting this value to an underscore (`_`) is recommended when using nested inputs within Workflow Builder to match expected input formats of Workflow Builder, but the actual value can be changed to something else! This "flattening" behavior **did** exist prior to this version, but used a period (`.`) which is not valid for webook inputs in Workflow Builder.

<details>
<summary>Flattening example</summary>

The resulting output of flattened objects is not always clear, but the following can hopefully serve as a quick reference as well as [these specs](https://github.com/slackapi/slack-github-action/blob/5d1fb07d3c4f410b8d278134c714edff31264beb/test/slack-send-test.js#L264-L319) when using `_` as the delimiter:

**Input**:

```json
{
    "apples": "tree",
    "bananas": {
        "truthiness": true
    }
}
```

**Output**:

```json
{
    "apples": "tree",
    "bananas_truthiness": "true"
}
```

Notice that `bananas_truthiness` is also stringified in this process, as part of updating values to match the expected inputs of Workflow Builder!

</details>

## Changes

In addition to the changes above, the following lists all of the changes since the prior version with the **complete changelog** changes found here: https://github.com/slackapi/slack-github-action/compare/v1.26.0...v1.27.0

#### 🎁 Enhancements

* Make payload delimiter configurable in https://github.com/slackapi/slack-github-action/pull/281 - thanks @rzumer!

#### 📚 Documentation

* doc: how to reply to a message in https://github.com/slackapi/slack-github-action/pull/309 - thanks @WilliamBergamin!

#### 🔒 Security

* chore(deps): bump axios to 1.7.5 to address CVE-2024-39338 in https://github.com/slackapi/slack-github-action/pull/332 - thanks @zimeg!

#### 🧪 Maintenance

* Add codecov coverage uploading in https://github.com/slackapi/slack-github-action/pull/308 - thanks @filmaj!
* ci(test): run integration tests in a single sequential environment in https://github.com/slackapi/slack-github-action/pull/310 - thanks @zimeg!

#### 📦  Dependencies 

* Bump eslint-plugin-jsdoc from 48.2.2 to 48.2.3 in https://github.com/slackapi/slack-github-action/pull/305 - thanks @dependabot!
* Bump @slack/web-api from 7.0.2 to 7.0.4 in https://github.com/slackapi/slack-github-action/pull/307 - thanks @dependabot!
* build(deps-dev): bump sinon from 17.0.1 to 18.0.0 in https://github.com/slackapi/slack-github-action/pull/313 - thanks @dependabot!
* build(deps-dev): bump eslint-plugin-jsdoc from 48.2.3 to 48.2.7 in https://github.com/slackapi/slack-github-action/pull/314 - thanks @dependabot!
* build(deps): bump axios from 1.6.8 to 1.7.2 in https://github.com/slackapi/slack-github-action/pull/315 - thanks @dependabot!
* build(deps): bump codecov/codecov-action from 4.0.1 to 4.4.1 in https://github.com/slackapi/slack-github-action/pull/316 - thanks @dependabot!
* build(deps-dev): bump nyc from 15.1.0 to 17.0.0 in https://github.com/slackapi/slack-github-action/pull/319 - thanks @dependabot!
* build(deps-dev): bump eslint-plugin-jsdoc from 48.2.7 to 48.5.0 in https://github.com/slackapi/slack-github-action/pull/321 - thanks @dependabot!
* build(deps-dev): bump mocha from 10.4.0 to 10.5.2 in https://github.com/slackapi/slack-github-action/pull/322 - thanks @dependabot!
* build(deps): bump codecov/codecov-action from 4.4.1 to 4.5.0 in https://github.com/slackapi/slack-github-action/pull/324 - thanks @dependabot!
* build(deps): bump @slack/web-api from 7.0.4 to 7.2.0 in https://github.com/slackapi/slack-github-action/pull/323 - thanks @dependabot!
* build(deps): bump https-proxy-agent from 7.0.4 to 7.0.5 in https://github.com/slackapi/slack-github-action/pull/320 - thanks @dependabot!
* build(deps-dev): bump eslint-plugin-jsdoc from 48.5.0 to 48.10.2 in https://github.com/slackapi/slack-github-action/pull/325 - thanks @dependabot!
* build(deps-dev): bump chai from 4.4.1 to 4.5.0 in https://github.com/slackapi/slack-github-action/pull/326 - thanks @dependabot!
* build(deps): bump @slack/web-api from 7.2.0 to 7.3.2 in https://github.com/slackapi/slack-github-action/pull/327 - thanks @dependabot!
* build(deps-dev): bump mocha from 10.5.2 to 10.7.0 in https://github.com/slackapi/slack-github-action/pull/328 - thanks @dependabot!

## 🎉 New contributors

* @rzumer made their first contribution in https://github.com/slackapi/slack-github-action/pull/281!
