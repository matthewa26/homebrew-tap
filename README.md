# homebrew-tap

Personal [Homebrew](https://brew.sh) tap for tools maintained by [Matthew Ayers](https://matthewayers.com).

## Add the tap

```bash
brew tap matthewa26/tap
```

Once tapped, install any formula by name:

```bash
brew install matthewa26/tap/<formula>
```

(The first install of a formula auto-taps if you skip the explicit `brew tap` step.)

## Formulae

| Formula | Description | Upstream |
|---|---|---|
| [`pr-scout`](Formula/pr-scout.rb) | Scan GitHub PRs across local repos and surface ones that need attention | [matthewa26/pr-scout](https://github.com/matthewa26/pr-scout) |

## Update / uninstall

```bash
brew update                       # refresh tap metadata
brew upgrade <formula>            # bump installed formula
brew uninstall <formula>          # remove a formula
brew untap matthewa26/tap         # remove the tap entirely
```

## Naming note

The repository is named `homebrew-tap` on GitHub because Homebrew expects every tap repo to use that prefix. The brew-side identifier drops the prefix — so the `git clone` URL is `github.com/matthewa26/homebrew-tap`, while the brew commands use `matthewa26/tap`. Both refer to the same single repository.

## License

Each formula's upstream project carries its own license — see the linked source repository.

The formula files in this tap are licensed under [Apache 2.0](LICENSE). Copyright 2026 Matthew Ayers.
