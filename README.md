# macos-update
A small script for keeping MacOS computers up to date.

## Why?

Because keeping software up to date shouldn't be hard.

## How it works

The [update script](bin/update.sh) consists of updating a number of global dependencies. Specifically:

- softwareupdate: The system software update tool (see: `man softwareupdate` for more details).
- Homebrew: update, upgrade, and cleanup
- npm: install npm, upgrade
- gem: update, cleanup


There is a `plist` file that schedules the update script to be run once a day around midnight.

## Commands

### plist-update

Copies the plist files from the `plist` directory to the default `/Library/LaunchDaemons/` directory.

```
$ source bin/plist-update.sh
```

### plist-reload

Unloads and then loads the plist files in the default `/Library/LaunchDaemons/` directory with the `launchctl` command.

```
$ source bin/plist-reload.sh
```

### plist-check

Checks that all of the plist files have been loaded with the `launchctl` command without error.

```
$ source bin/plist-check.sh
```

### plist-deploy

Runs all of the commands: plist-update, plist-reload, and plist-check at once.

```
$ source bin/plist-deploy.sh
```