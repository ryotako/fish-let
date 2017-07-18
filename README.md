# fish-let

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

[slack-link]: https://fisherman-wharf.herokuapp.com
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg
[fisherman]: https://github.com/fisherman/fisherman
