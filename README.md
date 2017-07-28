# fish-let

[![Build Status][travis-badge]][travis-link]
[![Slack Room][slack-badge]][slack-link]

Just a wrapper for bash's let command

## Install

With [fisherman]

```
fisher ryotako/fish-let
```

## Usage

Use in the same way as `let` command for bash, but a variable named `argv` is not acceptable.

```fish
set -l foo 0
let foo++
let foo+=3
let foo=$foo%3
```

[travis-link]: https://travis-ci.org/ryotako/fish-let
[travis-badge]: https://img.shields.io/travis/ryotako/fish-let.svg
[slack-link]: https://fisherman-wharf.herokuapp.com
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg
[fisherman]: https://github.com/fisherman/fisherman

