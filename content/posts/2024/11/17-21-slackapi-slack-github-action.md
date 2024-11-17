---
title: Slack Send to Slack
date: 2024-11-17 21:01:09 +00:00
tags:
  - slackapi
  - GitHub Actions
draft: false
repo: slackapi/slack-github-action
marketplace: https://github.com/marketplace/actions/slack-send-to-slack
version: v2.0.0
dependentsNumber: "0"
---


Version updated for **slackapi/slack-github-action** to version **v2.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slack-send-to-slack) to find the latest changes.

## Release notes

**YAML! And more API methods! With improved erroring! And more!**

Sending data to Slack can now be done with the YAML format, and that data can be sent to [a Slack API method][methods] or [technique of choice](https://github.com/slackapi/slack-github-action/tree/main#sending-techniques) with the provided payload. And additional configurations can improve error handling or customize values between steps.

Breaking changes happen with this update and recommended migration strategies are detailed below. Adding this step to new workflows might prefer to follow the [`README`](https://github.com/slackapi/slack-github-action/tree/main#slack-send-github-action) instead :books:

## What's changed

Both inputs of payload variables, techniques for sending the payload, additional configurations, and expected outputs were changed:

- **Sending variables**
  - Breaking changes
    - [Only one payload input can be provided](#only-one-payload-input-can-be-provided)
    - [Only one technique to send can be provided](#only-one-technique-to-send-can-be-provided)
    - [Variable replacements no longer happen by default](#variable-replacements-no-longer-happen-by-default)
    - [Payload file path parsed option was removed](#payload-file-path-parsed-option-was-removed)
  - Enhancements
    - [Payloads can now be written in YAML](#payloads-can-now-be-written-in-yaml)
    - [Payload can now be written in unwrapped JSON](#payload-can-now-be-written-in-unwrapped-json)
- **Sending techniques**
  - Technique 1: Slack Workflow Builder
    - Breaking changes
      - [The webhook type must be specified in webhook inputs](#the-webhook-type-must-be-specified-in-webhook-inputs)
      - [Payload flattening no longer happens by default](#payload-flattening-no-longer-happens-by-default)
    - Enhancements
      - [The webhook URL can be specified in webhook inputs](#the-webhook-url-can-be-specified-in-webhook-inputs)
  - Technique 2: Slack API method
    - Breaking changes
      - [The Slack API method now must be specified in inputs](#the-slack-api-method-now-must-be-specified-in-inputs)
      - [A token must be provided with other inputs](#a-token-must-be-provided-with-other-inputs)
      - [Inputs to the Slack API method must be provided in payloads](#inputs-to-the-slack-api-method-must-be-provided-in-payloads)
      - [Messages cannot be sent to multiple channels in one step](#messages-cannot-be-sent-to-multiple-channels-in-one-step)
  - Technique 3: Slack incoming webhook
    - Breaking changes
      - [The webhook type must be specified for incoming webhooks](#the-webhook-type-must-be-specified-for-incoming-webhooks)
    - Enhancements
      - [The webhook URL can be specified for incoming webhook](#the-webhook-url-can-be-specified-for-incoming-webhooks)
- **Additional configurations**
  - Enhancements
    - [Steps can exit with an error after a failed Slack API call](#steps-can-exit-with-an-error-after-a-failed-slack-api-call)
    - [Failed requests can be retried various amounts of times](#failed-requests-can-be-retried-various-amounts-of-times)
    - [Provided payloads can be flattened with a delimiter](#provided-payloads-can-be-flattened-with-a-delimiter)
    - [Provided payloads can have templated variables replaced](#provided-payloads-can-have-templated-variables-replaced)
    - [Proxying HTTPS requests can be done within inputs](#proxying-https-requests-can-be-done-within-inputs)
- **Expected outputs**
  - Breaking changes
    - [The time value is now returned as the Unix epoch time](#the-time-value-is-now-returned-as-the-unix-epoch-time)
  - Enhancements
    - [An ok value is added to represent response success](#an-ok-value-is-added-to-represent-response-success)
    - [A response value is added with the response data](#a-response-value-is-added-with-the-response-data)

The following sections detail these changes with recommended changes for existing GitHub workflows using this step and certain features.

If something seems off after making these changes, please feel free to [open an issue][issues] for discussion! 👾

## Sending variables

The source of variables remains the same, using one of the following inputs:

- `payload`: Inputs written inline in your GitHub workflow file.
- `payload-file-path`: Inputs gathered from a file.
- **No input**: Uses the default event [context][event-context] with a [payload][event-payload] matching the GitHub event.

### :warning: Breaking changes

<div id="only-one-payload-input-can-be-provided"></div>

#### Only one payload input can be provided

This Action now exits with an error if both `payload` and `payload-file-path` are provided.

**Prior to updating**: Both options could be provided with `payload` being preferred.

**Recommended change**: Use either `payload`, `payload-file-path`, or neither, when providing inputs. But don't include both.

<div id="only-one-technique-to-send-can-be-provided"></div>

#### Only one technique to send can be provided

This Action now exits with an error if both `method` and `webhook` techniques are provided.

**Prior to updating**: Both techniques could be used to send the same payload.

**Recommended change**: Use either `method` or `webhook` to send data, but not both.

<div id="variable-replacements-no-longer-happen-by-default"></div>

#### Variable replacements no longer happen by default

This Action now sends payload provided in a `payload-file-path` file exactly as is.

**Prior to updating**: Templatized variables in input files were replaced with the matching `github` or `env` variable:

```json
{
  "channel": "${{ env.SLACK_CHANNEL_ID }}",
  "text": "A commit was made: ${{ github.sha }}"
}
```

Changing the above file into something like this before being sent:

```json
{
  "channel": "C0123456789",
  "text": "A commit was made: 3982e204d2ae590e908dd1e279e63933da566c8c"
}
```

**Recommended change**: To continue replacing templated variables provided from the step `env` or default GitHub event [context][event-context] and [payload][event-payload], set the `payload-templated` variable to `true`.

<div id="payload-file-path-parsed-option-was-removed"></div>

#### Payload file path parsed option was removed

This Action removed the `payload-file-path-parsed` input option.

**Prior to updating**: This option, which defaulted to `true`, could be set to `false` to avoid replacing templatized variables in a provided `payload-file-path` file.

**Recommended change**: Remove this option if it's set to `false` or set the new `payload-templated` option to `true` to continue parsing the provided payload.

### 🎁 Enhancements

<div id="payloads-can-now-be-written-in-yaml"></div>

#### Payloads can now be written in YAML

This Action now supports writing `payload` or `payload-file-path` values with YAML!

**Prior to updating**: Values provided as payloads had to be JSON.

**Recommended change**: Optional. Format the input `payload` value as YAML to match the surrounding steps:

```yaml
- name: Post to a Slack channel
  uses: slackapi/slack-github-action@v2.0.0
  with:
    method: chat.postMessage
    token: ${{ secrets.SLACK_BOT_TOKEN }}
    payload: |
      channel: ${{ secrets.SLACK_CHANNEL_ID }}
      text: "Greetings <@channel>!"
```

<div id="payload-can-now-be-written-in-unwrapped-json"></div>

#### Payload can now be written in unwrapped JSON

This Action now supports writing `payload` with unwrapped JSON, where surrounding braces are removed.

**Prior to updating**: Values provided as payloads had to be JSON.

**Recommended change**: Optional. Remove the surrounding braces from an existing `payload` value:

```yaml
- name: Post to a Slack channel
  uses: slackapi/slack-github-action@v2.0.0
  with:
    method: chat.postMessage
    token: ${{ secrets.SLACK_BOT_TOKEN }}
    payload: |
      "channel": "${{ secrets.SLACK_CHANNEL_ID }}",
      "text": "Greetings <@channel>!",
```

## Sending techniques

The techniques for sending variables remains the same, using one of the following:

- **Technique 1**: [Slack Workflow Builder][wfb]
- **Technique 2**: [Slack API method][methods]
- **Technique 3**: [Slack incoming webhook][incoming-webhook]

Changes for different technique might be different and are included in each of the following sections.

### Technique 1: Slack Workflow Builder

#### ⚠️ Breaking changes

<div id="the-webhook-type-must-be-specified-in-webhook-inputs"></div>

##### The webhook type must be specified in webhook inputs

This Action now requires setting the `webhook-type` as a step input value.

**Prior to updating**: The webhook type could be omitted to send to Workflow Builder.

**Recommended change**: Set the `webhook-type` value to `webhook-trigger`, as shown in the example below.

<div id="payload-flattening-no-longer-happens-by-default"></div>

##### Payload flattening no longer happens by default

This Action no longer flattens or stringifies payloads being sent to Workflow Builder by default.

**Prior to updating**: Payloads sent using a webhook trigger were flattened with a `.` delimiter and have values stringified before being sent.

**Recommended change**: If payload flattening is needed, use the `payload-delimiter` option. Inputs of Slack workflows should use an underscore `_` as a delimiter to match expected inputs of Workflow Builder:

```yaml
- name: Send GitHub Action data to a Slack workflow
  uses: slackapi/slack-github-action@v2.0.0
  with:
    payload-delimiter: "_"
    webhook: ${{ secrets.SLACK_WEBHOOK_URL }}
    webhook-type: webhook-trigger
```

#### 🎁 Enhancements

<div id="the-webhook-url-can-be-specified-in-webhook-inputs"></div>

##### The webhook URL can be specified in webhook inputs

This Action can now set the `webhook` URL as a step input.

**Prior to updating**: The `SLACK_WEBHOOK_URL` environment variable set this value.

**Recommended change**: Optional. Use the `webhook` input value, as shown above, to set the webhook URL.

### Technique 2: Slack API methods

This technique can now send to [the Slack API methods][methods] and supports all [token][tokens] types!

#### ⚠️ Breaking changes

<div id="the-slack-api-method-now-must-be-specified-in-inputs"></div>

##### The Slack API method now must be specified in inputs

This Action now requires that [the Slack API method][methods] is specified in inputs.

**Prior to updating**: Messages would be posted using `chat.postMessage` or `chat.update` behind the scenes.

**Recommend change**: Use the `method` that matches the message being posted, or use a different method:

```yaml
- name: Post to a Slack channel
  uses: slackapi/slack-github-action@v2.0.0
  with:
    method: chat.postMessage
    token: ${{ secrets.SLACK_BOT_TOKEN }}
    payload: |
      channel: ${{ secrets.SLACK_CHANNEL_ID }}
      text: "Greetings <@channel>!"
```

Note: Steps with `update-ts` should use `chat.update` as the `method`.

<div id="a-token-must-be-provided-with-other-inputs"></div>

##### A token must be provided with other inputs

This Action expects a [`token`][tokens] as a step input value.

**Prior to updating**: Bot tokens were provided with the `SLACK_BOT_TOKEN` environment variable.

**Recommended change**: Provide the `token` scoped for the method as a step input, as shown above. The `SLACK_TOKEN` environment variable can also be used.

<div id="inputs-to-the-slack-api-method-must-be-provided-in-payloads"></div>

##### Inputs to the Slack API method must be provided in payloads

This Action now passes all provided values for payloads to the Slack API method.

**Prior to updating**: The `channel-id` and `slack-message` values were used.

**Recommended change**: Include the values sent to the Slack API method in the provided payload, as shown above.

<div id="messages-cannot-be-sent-to-multiple-channels-in-one-step"></div>

##### Messages cannot be sent to multiple channels in one step

This Action can no longer send messages to multiple channels.

**Prior to updating**: Multiple channels could be provided to `channel-id`.

**Recommended change**: Update your GitHub workflow to repeat the same `chat.postMessage` step multiple times with different channel IDs.

### Technique 3: Slack incoming webhook

#### ⚠️ Breaking changes

<div id="the-webhook-type-must-be-specified-for-incoming-webhooks"></div>

##### The webhook type must be specified for incoming webhooks

This Action now requires setting the `webhook-type` as a step input value.

**Prior to updating**: The webhook type could be omitted to send to Workflow Builder.

**Recommended change**: Set the `webhook-type` value to `webhook-trigger`, as shown in the example below:

```yaml
- name: Post a message in a channel
  uses: slackapi/slack-github-action@v2.0.0
  with:
    webhook: ${{ secrets.SLACK_WEBHOOK_URL }}
    webhook-type: incoming-webhook
    payload: |
      text: "Greetings from this step!"
```

#### 🎁 Enhancements

<div id="the-webhook-url-can-be-specified-for-incoming-webhooks"></div>

##### The webhook URL must be specified for incoming webhooks

This Action can now set the `webhook` URL as a step input.

**Prior to updating**: The `SLACK_WEBHOOK_URL` environment variable set this value.

**Recommended change**: Optional. Use the `webhook` input value, as shown above, to set the webhook URL.

## Additional configurations

### 🎁 Enhancements

<div id="steps-can-exit-with-an-error-after-a-failed-slack-api-call"></div>

#### Steps can exit with an error after a failed Slack API call

This Action can now exit if the Slack API returns an erroring response.

**Prior to updating**: Errors due to invalid payloads were ignored.

**Recommended change**: If a failing response from the Slack API should cause a step to fail, the `errors` value should be set to `true` since it defaults to `false`:

```yaml
- name: Attempt to inverse a message
  uses: slackapi/slack-github-action@v2.0.0
  with:
    errors: true
    method: chat.reverse
    token: ${{ secrets.SLACK_BOT_TOKEN }}
    payload: |
      "message": "palindrome"
```

<div id="failed-requests-can-be-retried-various-amounts-of-times"></div>

#### Failed requests can be retried various amounts of times

This Action can now retry requests that failed due to [rate limits][rate-limits].

**Prior to updating**: Rate limited requests were retried a fixed amount of times.

**Recommended change**: Set the `retries` option to [a setting of choice](https://github.com/slackapi/slack-github-action/tree/main#retrying-failed-requests):

```yaml
- name: Attempt to inverse a message
  uses: slackapi/slack-github-action@v2.0.0
  with:
    method: chat.postMessage
    retries: rapid
    token: ${{ secrets.SLACK_BOT_TOKEN }}
    payload: |
      "message": "Good luck!"
```

<div id="provided-payloads-can-be-flattened-with-a-delimiter"></div>

#### Provided payloads can be flattened with a delimiter

This Action can now flatten and stringify payloads from any source.

**Prior to updating**: Payloads from the `payload-file-path` source were flattened with a period `.` delimiter by default.

**Recommended change**: Set the `payload-delimiter` option to an underscore `_` to flatten and stringify nested payloads:

```yaml
- name: Send GitHub Action data to a Slack workflow
  uses: slackapi/slack-github-action@v2.0.0
  with:
    payload-delimiter: "_"
    webhook: ${{ secrets.SLACK_WEBHOOK_URL }}
    webhook-type: webhook-trigger
```

In the example above, data from the default GitHub event [context][event-context] and event [payload][event-payload] are flattened before being sent with a webhook to Workflow Builder, matching the expected input shape of Workflow Builder.

<div id="provided-payloads-can-have-templated-variables-replaced"></div>

#### Provided payloads can have templated variables replaced

This Action can now replace templated variables from any source.

**Prior to updating**: Templated variables were replaced by default in payloads from the `payload-file-path` source.

**Recommended change**: Set the `payload-templated` option to `true` to replace templated variables in provided payloads:

```yaml
- name: Send custom JSON data to Slack workflow
  uses: slackapi/slack-github-action@v2.0.0
  with:
    payload-file-path: "./payload-slack-content.json"
    payload-templated: true
    webhook: ${{ secrets.SLACK_WEBHOOK_URL }}
    webhook-type: webhook-trigger
```

<div id="proxying-https-requests-can-be-done-within-inputs"></div>

#### Proxying HTTPS requests can be done within inputs

This Action can now set HTTPS proxies within the step inputs.

**Prior to updating**: The `HTTPS_PROXY` environment variable was recommended.

**Recommended change**: Set the `proxy` step input:

```yaml
- name: Post to a Slack channel via a proxy
  uses: slackapi/slack-github-action@v2.0.0
  with:
    method: chat.postMessage
    proxy: "http://proxy.example.org:8080" # Change this to a custom value
    token: ${{ secrets.SLACK_BOT_TOKEN }}
    payload: |
      channel: ${{ secrets.SLACK_CHANNEL_ID }}
      text: "This message was sent through a proxy"
```

## Expected outputs

The outputs from steps continues to return the following values, with changes noted below:

- `time`: `number` The Unix [epoch time][epoch] that the step completed.
- `channel_id`: `string`. The [channel ID][conversation] included in the response of some Slack API methods.
- `ts`: `string`. The [timestamp][messaging-timestamp] of the Slack event or message.
- `thread_ts`: `string`. The [timestamp][messaging-timestamp] of a parent Slack message with [threaded replies][messaging-parents].

### ⚠️ Breaking changes

<div id="the-time-value-is-now-returned-as-the-unix-epoch-time"></div>

#### The time value is now returned as the Unix epoch time

This Action now returns the Unix [epoch time][epoch] of when the step completed.

**Prior to updating**: The returned `time` value was formatted as a JavaScript date.

**Recommenced change**: Configure following steps to use `time` as an epoch offset.

### 🎁 Enhancements

<div id="an-ok-value-is-added-to-represent-response-success"></div>

#### An ok value is added to represent response success

This Action now returns `ok` to represent a successful send.

**Prior to updating**: Checking the `time` value or other outputs could be used to determine the status of some steps.

**Recommended change**: Configure steps that require certain successful responses of prior steps to check `ok`:

```yaml
- name: Send a message into channel
  id: message
  uses: slackapi/slack-github-action@v2.0.0
  with:
    method: chat.postMessage
    token: ${{ secrets.SLACK_BOT_TOKEN }}
    payload: |
      channel: ${{ secrets.SLACK_CHANNEL_ID }}
      text: "Something is happening and is in action"
- name: Reply to that message with outputs
  if: ${{ steps.message.outputs.ok }}
  uses: slackapi/slack-github-action@v2.0.0
  with:
    method: chat.postMessage
    token: ${{ secrets.SLACK_BOT_TOKEN }}
    payload: |
      channel: ${{ secrets.SLACK_CHANNEL_ID }}
      text: "The previous step completed <!date^${{ steps.message.outputs.time }}^{date_num} at {time_secs}|just now>."
      thread_ts: "${{ steps.message.outputs.ts }}"
```

<div id="a-response-value-is-added-with-the-response-data"></div>

#### A response value is added with the response data

This Action now returns the JSON `response` value from Slack API requests.

**Prior to change**: Some response values were returned for conversation APIs.

**Recommended change**: Use the output `response` of one step as input to another for more complex workflows.

---

We're hoping the update goes well, but please do [let us know][issues] if something seems off! 💌

[conversation]: https://api.slack.com/types/conversation
[epoch]: https://en.wikipedia.org/wiki/Unix_time
[event-context]: https://github.com/actions/toolkit/blob/main/packages/github/src/context.ts#L6
[event-payload]: https://docs.github.com/en/webhooks/webhook-events-and-payloads
[incoming-webhook]: https://api.slack.com/messaging/webhooks
[issues]: https://github.com/slackapi/slack-github-action/issues
[messaging-parents]: https://api.slack.com/messaging/retrieving#finding_threads
[messaging-threads]: https://api.slack.com/messaging/sending#threading
[messaging-timestamp]: https://api.slack.com/messaging/retrieving#individual_messages
[methods]: https://api.slack.com/methods
[rate-limits]: https://api.slack.com/apis/rate-limits
[tokens]: https://api.slack.com/concepts/token-types
[wfb]: https://slack.com/features/workflow-automation
