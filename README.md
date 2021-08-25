# git-open

A set of scripts to open a browsable GitHub/GitLab URL for a local Git repository.
Defaults to the `origin` remote, but you can specify an alternative remote for each command.
Run `git remote` to list the available remotes for a Git repository.

## Setup

Download/clone these files in a directory on your system and add this directory to your `PATH`.

## Usage

### git-open-branch

Open the URL for the current branch for the `origin` remote:

    $ git-open-branch

Open the URL for the current branch for another remote:

    $ git-open-branch <remote>

### git-open-ci

Open the URL for the continuous integration jobs for the `origin` remote:

    $ git-open-ci

Open the URL for the continuous integration jobs for another remote:

    $ git-open-ci <remote>

### git-open-requests

Open the URL for the pull/merge requests for the `origin` remote:

    $ git-open-requests

Open the URL for the pull/merge requests for another remote:

    $ git-open-requests <remote>
