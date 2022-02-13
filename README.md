# IOhubOS Zerotier

[![License](https://img.shields.io/github/license/iohubos/iohubos-zerotier.svg)](LICENSE)
[![CircleCI Build Status](https://circleci.com/gh/iohubos/iohubos-zerotier/tree/main.svg?style=shield)](https://circleci.com/gh/iohubos/iohubos-zerotier/tree/main)

`zerotier` container for IOhubOS. Adapted from `zerotier/zerotier`.

## Environment variables

- `CLEAN_PID`: if `Y`, zerotier pid is deleted at start.
- `ROUTE_HOST`: if `Y`, host networks are accessibile from remote zerotier peers.
