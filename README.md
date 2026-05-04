# homebrew-pr-scout

Homebrew tap for [pr-scout](https://github.com/matthewa26/pr-scout) — a CLI for surfacing actionable GitHub PRs across local repository clones.

## Install

```bash
brew install matthewa26/pr-scout/pr-scout
```

This shorthand auto-taps the repo on first use. After install, run `gh auth login` if you haven't already — `pr-scout` shells out to the GitHub CLI for all queries.

## Update

```bash
brew update
brew upgrade pr-scout
```

## Uninstall

```bash
brew uninstall pr-scout
brew untap matthewa26/pr-scout
```

## Build from source instead

If you'd rather skip Homebrew, see the upstream [README](https://github.com/matthewa26/pr-scout#install).

## License

The pr-scout source code is licensed under [Apache 2.0](https://github.com/matthewa26/pr-scout/blob/main/LICENSE). This tap repository (formula files only) is also Apache 2.0. Copyright 2026 Matthew Ayers.
