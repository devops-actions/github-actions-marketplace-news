---
title: Run PHP Scoper
date: 2026-07-02 06:38:05 +00:00
tags:
  - WPTechnix
  - GitHub Actions
draft: false
repo: https://github.com/WPTechnix/run-php-scoper
marketplace: https://github.com/marketplace/actions/run-php-scoper
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/WPTechnix/run-php-scoper** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-php-scoper) to find the latest changes.

## What's Changed

# v1.0.0

Initial release of the PHP-Scoper Action, a composite GitHub Action for scoping PHP project dependencies using `humbug/php-scoper`.

## What's Included

* **PHP version selection**: Choose any PHP version using `php-version` (default: `8.2`).
* **Flexible PHP-Scoper versions**: Use a specific release tag, version constraint, or branch with `scoper-version`.
* **Custom working directory**: Run the action from any subdirectory within your repository.
* **Configurable PHP-Scoper configuration**: Specify the path to `scoper.inc.php` using a relative or absolute path.
* **Optional Composer installation**: Skip `composer install` when the `vendor/` directory already exists.
* **Custom Composer arguments**: Pass additional Composer options through `composer-args`.
* **Early validation**: Validate the working directory, configuration file, and PHP version before installing dependencies.
* **Action outputs**:

  * `output-path`: Absolute path to the generated scoped build.
  * `scoped-files`: Total number of scoped PHP files.

