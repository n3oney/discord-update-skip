# discord-update-skip
A simple bash script to fix Discord wanting to update to a version that isn't in the repos.


## Dependencies
 * bash
 * [jq](https://github.com/stedolan/jq)

## Installation
### The script is available on the AUR:
```sh
paru -S discord-canary-update-skip-git
```
### If you're not on Arch,
You can install it by simply downloading the `set-config.sh` file to somewhere within your `$PATH`.

## Usage
To patch your Discord configuration, you can simply run the script.

```sh
discord-canary-update-skip
```

The script should work even if your Discord configuration hasn't yet been initialized. It should inform you about it if that's the case.

## Discord versions
This is the canary branch, which is for the canary Discord version.
Other versions:
 * [stable](https://github.com/n3oney/discord-update-skip/tree/stable)
 * [PTB](https://github.com/n3oney/discord-update-skip/tree/ptb)
