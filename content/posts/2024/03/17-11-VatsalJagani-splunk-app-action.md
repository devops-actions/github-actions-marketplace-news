---
title: Generate App Build, App Inspect Check and Splunk App Utilities
date: 2024-03-17 11:18:21 +00:00
tags:
  - VatsalJagani
  - GitHub Actions
draft: false
repo: VatsalJagani/splunk-app-action
marketplace: https://github.com/marketplace/actions/generate-app-build-app-inspect-check-and-splunk-app-utilities
version: v4
dependentsNumber: "16"
---


Version updated for **VatsalJagani/splunk-app-action** to version **v4**.
- This action is used across all versions by **16** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/generate-app-build-app-inspect-check-and-splunk-app-utilities) to find the latest changes.

## Release notes

### v4
* Run the user-defined commands in the context of your App's root directory instead of Repo's root directory. Refer to `Running User Defined Commands Before Generating the final App Build` for more details.

* `to_make_permission_changes` parameter's default value has been changed to `false`. Refer to `Avoid File and Folder Permission Issue on Your App Build` for more details.
    * Automatic file permission changes now also add executable permissions to the following file extensions, `.msi`, `.exe`, `.cmd`, `.bat`, along with `.sh`.

* The input parameters `is_generate_build` and `app_build_path` has been removed.


### Upgrade Guide from v3 to v4
* From `v4` of the `splunk-app-action`, your user-defined custom command (Refer to `Running User Defined Commands Before Generating the final App Build` section) would run in the context of your App's folder instead of the root folder.
    * So you need to change the code from this:
        ```
        - uses: VatsalJagani/splunk-app-action@v3
          env:
            SPLUNK_APP_ACTION_1: "rm -rf my_app/extra_test_folder"
            SPLUNK_APP_ACTION_2: "cat 'abc,123' >> my_app/lookups/my_custom_lookup.csv"
          with:
            app_dir: "my_app"
        ```
        * to
        ```
        - uses: VatsalJagani/splunk-app-action@v3
          env:
            SPLUNK_APP_ACTION_1: "rm -rf extra_test_folder"
            SPLUNK_APP_ACTION_2: "cat 'abc,123' >> lookups/my_custom_lookup.csv"
          with:
            app_dir: "my_app"
        ```
        * Because this command would now run in context of your App's directory.

* `to_make_permission_changes` - default value has been changed to `false` from `true`. This means if you were to apply file and folder permission changes automatically, you have to explicitly add this parameter to your workflow. Refer to `Avoid File and Folder Permission Issue on Your App Build` for more details.

* The input parameters `is_generate_build` and `app_build_path` have been removed from GitHub action from `v4` onwards, hence if you are using them then migrate the action config properly before the version update.
