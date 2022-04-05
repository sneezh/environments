# Environments

This is a repo for my environments.

Bootstrap based on the [dotbot](https://github.com/anishathalye/dotbot).

## Installation
1. Download repo
2. Run inside folder
```sh
./install
```

## Warnings and errors

If you have this
```shell script
(item={'domain': 'com.apple.systempreferences', 'key': 'AttentionPrefBundleIDs', 'value': 0}) => {"ansible_loop_var": "item", "changed": false, "item": {"domain": "com.apple.systempreferences", "key": "AttentionPrefBundleIDs", "value": 0}, "msg": "Type is not supported: dictionary"}
```

You should run in terminal
```shell script
defaults write com.apple.systempreferences AttentionPrefBundleIDs 0
```

## Contents

### ZSH
The shell is [oh my zsh](https://ohmyz.sh/).

### Docker Machine NFS

After installing docker-machine based on virtualbox will run automatic