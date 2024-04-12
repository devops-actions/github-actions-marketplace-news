---
title: Phanalist
date: 2024-04-12 03:28:29 +00:00
tags:
  - denzyldick
  - GitHub Actions
draft: false
repo: denzyldick/phanalist-action
marketplace: https://github.com/marketplace/actions/phanalist
version: v0.1.21
dependentsNumber: "1"
---


Version updated for **denzyldick/phanalist-action** to version **v0.1.21**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/phanalist) to find the latest changes.

## Release notes

<img src="https://raw.githubusercontent.com/denzyldick/phanalist/main/docs/branding/banner-cropped.png"/>

Performant static analyzer for PHP, which is extremely easy to use. It helps you catch common mistakes in your PHP code.
It helps you improve your PHP code.

#### Example
![Example](https://github.com/denzyldick/phanalist/blob/main/docs/branding/example.gif)

### Usage
```yaml
name: "Phanalist GitHub action."
on:
  push:
    branches:
      - "master"
jobs:
  install-phanalist:
    runs-on: ubuntu-latest
    steps:
      -  uses: actions/checkout@v4
      -  uses: denzyldick/phanalist-action@v0.0.1
         with:
           src: /app
```
### Rules

The following rules are available:

|                  Code                  | Name                                           | Default options                                                                                              |
|:--------------------------------------:|:-----------------------------------------------|:-------------------------------------------------------------------------------------------------------------|
|                 E0000                  | Example rule                                   |                                                                                                              |
| [E0001](https://github.com/denzyldick/phanalist/blob/main/src/rules/examples/e1/e1.md)  | Opening tag position                           |                                                                                                              |
| [E0002](https://github.com/denzyldick/phanalist/blob/main/src/rules/examples/e2/e2.md)  | Empty catch                                    |                                                                                                              |
| [E0003](https://github.com/denzyldick/phanalist/blob/main/src/rules/examples/e3/e3.md)  | Method modifiers                               |                                                                                                              |
|   [E0004](https://github.com/denzyldick/phanalist/blob/main/src/rules/examples/e4.md)    | Uppercase constants                            |                                                                                                              |
|   [E0005](https://github.com/denzyldick/phanalist/blob/main/src/rules/examples/e5.md)    | Capitalized class name                         |                                                                                                              |
| [E0006](https://github.com/denzyldick/phanalist/blob/main/src/rules/examples/e6/e6.md)  | Property modifiers                             |                                                                                                              |
| [E0007](https://github.com/denzyldick/phanalist/blob/main/src/rules/examples/e7/e7.md)  | Method parameters count                        | check_constructor: true, max_parameters: 5                                                                   |
|  [E0008](https://github.com/denzyldick/phanalist/blob/main/src/rules/examples/e8/e8.md)  | Return type signature                          |                                                                                                              |
| [E0009](https://github.com/denzyldick/phanalist/blob/main/src/rules/examples/e9/e9.md)  | Cyclomatic complexity                          | max_complexity: 10                                                                                           |
| [E0010](https://github.com/denzyldick/phanalist/blob/main/src/rules/examples/e10/e10.md) | Npath complexity                               | max_complexity: 200                                                                                          |
|                 E0012                  | Service compatibility with Shared Memory Model | include_namespaces: ["App\\Service\\"],<br/>exclude_namespaces: [],<br/>reset_interfaces: ["ResetInterface"] |

Adding a new rule is a simple task, and [this tutorial](./docs/adding_new_rule.md) explains how to do it.


### Articles

Read a series of chapters on [https://dev.to/denzyldick](https://dev.to/denzyldick) to understand the project's internals. It 
is a great, easy-to-read introduction to this project. 

1. [Write your static analyzer for PHP.](https://dev.to/denzyldick/the-beginning-of-my-php-static-analyzer-in-rust-5bp8)
2. [How I made it impossible to write spaghetti code.](https://dev.to/denzyldick/how-i-made-it-impossible-to-write-spaghetti-code-dg4)
3. [Detecting spaghetti code in AST of a PHP source code.](https://dev.to/denzyldick/traversing-an-ast-of-php-source-code-2kee)
4. [Getting Symfony app ready for Swoole, RoadRunner, and FrankenPHP (no AI involved).](https://dev.to/sergiid/getting-symfony-app-ready-for-swoole-roadrunner-and-frankenphp-no-ai-involved-2d0g)
