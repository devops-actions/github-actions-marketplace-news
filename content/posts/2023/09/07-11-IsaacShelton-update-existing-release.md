---
title: Update Existing Release
date: 2023-09-07 11:04:24 +00:00
tags:
  - IsaacShelton
  - GitHub Actions
draft: false
repo: IsaacShelton/update-existing-release
marketplace: https://github.com/marketplace/actions/update-existing-release
version: v1.3.3
dependentsNumber: 40
---


Version updated for **IsaacShelton/update-existing-release** to version **v1.3.3**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **40** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/update-existing-release) to find the latest changes.

## Release notes

Includes all v1.3.3 improvements:
- Updated octokit dependencies

Includes all v1.3.2 improvements:
- Updated to node16 and @actions/core 1.10 (patriziobruno)
- Thank you to our contributors:
  - patriziobruno

Includes all v1.3.1 bug fixes:
- Fixed bug that caused releases with more than 100 assets to not be updated correctly (beyarkay)
- Thank you to our contributors:
  - beyarkay

Includes all v1.3.0 changes:
- Validation of tag name choice
- Fixed issue with first time creating a release

Includes all v1.2.0 changes:
- Fixed tag auto-updating
- Added `updateTag` option to automatically update the tag to the latest commit (default value is `true`)

Includes all initial v1.1.0 changes in Isaac Shelton's fork of [ColinPitrat/update-release](https://github.com/ColinPitrat/update-release) which itself is a fork of [johnwbyrd/update-release](https://github.com/johnwbyrd/update-release):
- Updated all dependencies to latest versions
- Code now works with latest version of GitHub API
- Added `replace` option, to allow for removing attached files that aren't overwritten
- Now works correctly when the release doesn't exist already (it will be added before updating)
- Cleaned up a little of the code, although it still isn't the cleanest

#### Example Usage:
```
    - name: Update release
      uses: IsaacShelton/update-existing-release@v1.3.3
      with:
        token: ${{ secrets.YOUR_PRIVATE_SECRET_TOKEN }}
        release: Nightly
        replace: true
        files: >
          stage/x86_64-Windows-HelloWorld.exe
          stage/arm64-MacOS-HelloWorld
          stage/x86_64-Ubuntu-HelloWorld
```

## Guide

Once your build has successfully completed, `update-existing-release` will choose a release name for your build.  Regardless of whether the ref that triggered the build is a tag or a branch, you'll get a human-friendly release name. You can override the default name if you wish. If the Github release name already exists, it is reused; otherwise, it is created.

### Inputs
This action has the following inputs:

| Input        | Description                                                             |
| ------------ | ----------------------------------------------------------------------- |
| `token` **(required)**     | This should be [your secure Github token](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/authenticating-with-the-github_token). Use `${{ secrets.GITHUB_TOKEN }}` if your build lasts less than an hour. Otherwise, you will need to [create your own access token](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line) with repo admin access, [store it as a secret](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/creating-and-using-encrypted-secrets) in your own repository, and reference that secret token in your build. |
| `files` **(required)**      | The files that you want for your the release. Presumably, this should include at least one file that you just built. File paths can be provided as absolute paths, or they can be relative to `${{ github.workspace }}`. |
| `release`       | The name of the release to be created. If none is supplied, a reasonable looking one will be chosen based on `${{ github.ref }}`. |
| `tag`       | The name of the tag to be created. For some inexplicable reason, Github thinks that you need to have a tag corresponding to every release, which makes no sense if you're using Github to do continuous integration builds.  The tag will be the same as the calculated name of the release, if this input is not supplied.  |
| `message`       | A brief description of the tag and also of the release.  |
| `body`       | A longer description of the release, if it is created.  |
| `prerelease`       | Whether to mark the release, if created, as a prerelease. Such releases are generally publicly visible. This is `false` by default. |
| `draft`       | Whether to mark the release, if created, as a draft. Such releases are generally not publicly visible. This is `false` by default. |
| `replace` (since v1.1.0)       | Whether to remove existing files of the release that are not overwritten. This will cause all existing files attached to the release to be removed and replaced with the files provided. This is `false` by default. |
| `updateTag` (since v1.2.0)       | Whether to update the tag to the latest commit. If the tag doesn't already exist, it will be created pointing to the latest commit regardless of this option. This is `true` by default. |

### Outputs

If successful, this action will have the following outputs:

| Output       | Description                                                             |
| ------------ | ----------------------------------------------------------------------- |
| `files`      | The calculated local paths of the files to be uploaded into the release |
| `draft`      | Whether the release, if created, was marked as a draft                  |
| `prerelease` | Whether the release, if created, was marked as a prerelease             |
| `release`    | The name of the release                                                 |
| `tag`        | The tag used to create the release                                      |

