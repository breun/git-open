# git-open

A set of scripts to open a browsable GitHub/GitLab URL for a local Git repository.
Defaults to the `origin` remote, but you can specify an alternative remote for each command.
Run `git remote` to list the available remotes for a Git repository.

## Requirements

* You should have the `git` command installed.
* Either `open` (macOS) or `xdg-open` (Linux) to open URLs.
* The `bash` shell should be installed, but you don't need to use it as your default shell.

## Setup

Download/clone these files in a directory on your system and add this directory to your `PATH`.

## Commands

The following commands are provided.

|Command                      |Description |
---                           |---
|`git-open-branch <remote>`   |Opens the URL for the current branch for the specified remote, or `origin` if none provided. |
|`git-open-branches <remote>` |Opens the URL for all branches for the specified remote, or `origin` if none provided. |
|`git-open-ci <remote>`       |Opens the URL for the continuous integration jobs for the specified remote, or `origin` if none provided. |
|`git-open-commits <remote>`  |Opens the URL for the commits for the specified remote, or `origin` if none provided. |
|`git-open-issues <remote>`   |Opens the URL for the issues for the specified remote, or `origin` if none provided. |
|`git-open-releases <remote>` |Opens the URL for the releases for the specified remote, or `origin` if none provided. |
|`git-open-requests <remote>` |Opens the URL for the pull/merge requests for the specified remote, or `origin` if none provided. |
|`git-open-tags <remote>`     |Opens the URL for the tags for the specified remote, or `origin` if none provided. |