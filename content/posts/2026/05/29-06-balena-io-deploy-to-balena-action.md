---
title: Deploy to Balena
date: 2026-05-29 06:42:25 +00:00
tags:
  - balena-io
  - GitHub Actions
draft: false
repo: https://github.com/balena-io/deploy-to-balena-action
marketplace: https://github.com/marketplace/actions/deploy-to-balena
version: v2.2.9
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/balena-io/deploy-to-balena-action** to version **v2.2.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-balena) to find the latest changes.

## Action Summary

The "Deploy to Balena GitHub Action" automates the process of pushing code to Balena builders to create and manage releases for fleets in BalenaCloud. It streamlines tasks like building releases, managing drafts for testing, and finalizing deployments, enabling efficient CI/CD workflows for IoT applications. Key features include support for caching, registry credentials, multi-service `.dockerignore` files, and customizable deployment environments.

## What's Changed

## Update dependency dotenv to v17

### Notable changes

- Improved skill files - tightened up details ([#&#8203;1009](https://redirect.github.com/motdotla/dotenv/pull/1009))
- Change text `injecting` to `injected` ([#&#8203;1005](https://redirect.github.com/motdotla/dotenv/pull/1005))
- Add `skills/` folder with focused agent skills: `skills/dotenv/SKILL.md` (core usage) and `skills/dotenvx/SKILL.md` (encryption, multiple environments, variable expansion) for AI coding agent discovery via the skills.sh ecosystem (`npx skills add motdotla/dotenv`)
- Tighten up logs: `◇ injecting env (14) from .env` ([#&#8203;1003](https://redirect.github.com/motdotla/dotenv/pull/1003))
- Fix as2 example command in README and update spanish README
- Add a new README section on dotenv’s approach to the agentic future.
- Rewrite README to get humans started more quickly with less noise while simultaneously making more accessible for llms and agents to go deeper into details.
- Make `DotenvPopulateInput` accept `NodeJS.ProcessEnv` type ([#&#8203;915](https://redirect.github.com/motdotla/dotenv/pull/915))
- Fixed typescript error definition ([#&#8203;912](https://redirect.github.com/motdotla/dotenv/pull/912))
- 🙏 A big thank you to new sponsor [Tuple.app](https://tuple.app/dotenv) - *the premier screen sharing app for developers on macOS and Windows.* Go check them out. It's wonderful and generous of them to give back to open source by sponsoring dotenv. Give them some love back.
- Fix clickable tip links by removing parentheses ([#&#8203;897](https://redirect.github.com/motdotla/dotenv/pull/897))
- Optionally specify `DOTENV_CONFIG_QUIET=true` in your environment or `.env` file to quiet the runtime log ([#&#8203;889](https://redirect.github.com/motdotla/dotenv/pull/889))
- Just like dotenv any `DOTENV_CONFIG_` environment variables take precedence over any code set options like `({quiet: false})`
- Add additional security and configuration tips to the runtime log ([#&#8203;884](https://redirect.github.com/motdotla/dotenv/pull/884))
- Dim the tips text from the main injection information text
- Patched injected log to count only populated/set keys to process.env ([#&#8203;879](https://redirect.github.com/motdotla/dotenv/pull/879))
- Default `quiet` to false - informational (file and keys count) runtime log message shows by default ([#&#8203;875](https://redirect.github.com/motdotla/dotenv/pull/875))

<details>
<summary>motdotla/dotenv (dotenv)</summary>

### [`v17.4.2`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1742-2026-04-12)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v17.4.1...v17.4.2)

##### Changed

- Improved skill files - tightened up details ([#&#8203;1009](https://redirect.github.com/motdotla/dotenv/pull/1009))

### [`v17.4.1`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1741-2026-04-05)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v17.4.0...v17.4.1)

##### Changed

- Change text `injecting` to `injected` ([#&#8203;1005](https://redirect.github.com/motdotla/dotenv/pull/1005))

### [`v17.4.0`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1740-2026-04-01)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v17.3.1...v17.4.0)

##### Added

- Add `skills/` folder with focused agent skills: `skills/dotenv/SKILL.md` (core usage) and `skills/dotenvx/SKILL.md` (encryption, multiple environments, variable expansion) for AI coding agent discovery via the skills.sh ecosystem (`npx skills add motdotla/dotenv`)

##### Changed

- Tighten up logs: `◇ injecting env (14) from .env` ([#&#8203;1003](https://redirect.github.com/motdotla/dotenv/pull/1003))

### [`v17.3.1`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1731-2026-02-12)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v17.3.0...v17.3.1)

##### Changed

- Fix as2 example command in README and update spanish README

### [`v17.3.0`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1730-2026-02-12)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v17.2.4...v17.3.0)

##### Added

- Add a new README section on dotenv’s approach to the agentic future.

##### Changed

- Rewrite README to get humans started more quickly with less noise while simultaneously making more accessible for llms and agents to go deeper into details.

### [`v17.2.4`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1724-2026-02-05)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v17.2.3...v17.2.4)

##### Changed

- Make `DotenvPopulateInput` accept `NodeJS.ProcessEnv` type ([#&#8203;915](https://redirect.github.com/motdotla/dotenv/pull/915))

* Give back to dotenv by checking out my newest project [vestauth](https://redirect.github.com/vestauth/vestauth). It is auth for agents. Thank you for using my software.

### [`v17.2.3`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1723-2025-09-29)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v17.2.2...v17.2.3)

##### Changed

- Fixed typescript error definition ([#&#8203;912](https://redirect.github.com/motdotla/dotenv/pull/912))

### [`v17.2.2`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1722-2025-09-02)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v17.2.1...v17.2.2)

##### Added

- 🙏 A big thank you to new sponsor [Tuple.app](https://tuple.app/dotenv) - *the premier screen sharing app for developers on macOS and Windows.* Go check them out. It's wonderful and generous of them to give back to open source by sponsoring dotenv. Give them some love back.

### [`v17.2.1`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1721-2025-07-24)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v17.2.0...v17.2.1)

##### Changed

- Fix clickable tip links by removing parentheses ([#&#8203;897](https://redirect.github.com/motdotla/dotenv/pull/897))

### [`v17.2.0`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1720-2025-07-09)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v17.1.0...v17.2.0)

##### Added

- Optionally specify `DOTENV_CONFIG_QUIET=true` in your environment or `.env` file to quiet the runtime log ([#&#8203;889](https://redirect.github.com/motdotla/dotenv/pull/889))
- Just like dotenv any `DOTENV_CONFIG_` environment variables take precedence over any code set options like `({quiet: false})`

```ini

# .env
DOTENV_CONFIG_QUIET=true
HELLO="World"
```

```js
// index.js
require('dotenv').config()
console.log(`Hello ${process.env.HELLO}`)
```

```sh
$ node index.js
Hello World

or

$ DOTENV_CONFIG_QUIET=true node index.js
```

### [`v17.1.0`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1710-2025-07-07)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v17.0.1...v17.1.0)

##### Added

- Add additional security and configuration tips to the runtime log ([#&#8203;884](https://redirect.github.com/motdotla/dotenv/pull/884))
- Dim the tips text from the main injection information text

```js
const TIPS = [
  '🔐 encrypt with dotenvx: https://dotenvx.com',
  '🔐 prevent committing .env to code: https://dotenvx.com/precommit',
  '🔐 prevent building .env in docker: https://dotenvx.com/prebuild',
  '🛠️  run anywhere with `dotenvx run -- yourcommand`',
  '⚙️  specify custom .env file path with { path: \'/custom/path/.env\' }',
  '⚙️  enable debug logging with { debug: true }',
  '⚙️  override existing env vars with { override: true }',
  '⚙️  suppress all logs with { quiet: true }',
  '⚙️  write to custom object with { processEnv: myObject }',
  '⚙️  load multiple .env files with { path: [\'.env.local\', \'.env\'] }'
]
```

### [`v17.0.1`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1701-2025-07-01)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v17.0.0...v17.0.1)

##### Changed

- Patched injected log to count only populated/set keys to process.env ([#&#8203;879](https://redirect.github.com/motdotla/dotenv/pull/879))

### [`v17.0.0`](https://redirect.github.com/motdotla/dotenv/blob/HEAD/CHANGELOG.md#1700-2025-06-27)

[Compare Source](https://redirect.github.com/motdotla/dotenv/compare/v16.6.1...v17.0.0)

##### Changed

- Default `quiet` to false - informational (file and keys count) runtime log message shows by default ([#&#8203;875](https://redirect.github.com/motdotla/dotenv/pull/875))

</details>

### List of commits

9451ad1f (Update dependency dotenv to v17, 2026-05-29)
