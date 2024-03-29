# `bb`

A command-line dispatcher for `startBB` (companion to `startAB` provided by `atelierb`)

## What is it

It allows commands to be issued from the command-line, so (hopefully) the user will not need to use the AtelierB front-end.

## Usage

```
bb --cmd1 args args ... --cmd2 args ...
```

Commands `cmd` correspond exactly to those available from within the `startBB` batch environment.
Args associate to the nearest command to the left.

## Installation

```bash
git clone git@github.com:/TheSignPainter98/bb.git
cd bb
```

Check that the `INSTALL_LOCATION` variable has an acceptable install value (by default this is `~/.bin`), then run the following.

```bash
make
```

### Uninstallation

To uninstall, simply run:

```bash
make clean
```
