# Homebrew Tap for boost

This tap distributes [`boost`](https://github.com/Alierkn/boost), a macOS
RAM, process, and developer-cache tune-up CLI.

The Homebrew formula is named `boost-cleaner` because Homebrew core already
uses `boost` for the C++ Boost libraries. The installed command is still
`boost`.

## Install

```bash
brew install alierkn/tap/boost-cleaner
```

Or:

```bash
brew tap alierkn/tap
brew install boost-cleaner
```

## Upgrade

```bash
brew upgrade boost-cleaner
```

or:

```bash
boost update
```

## Verify

```bash
boost --version
boost doctor
```
