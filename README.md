# celve/tap

A [Homebrew](https://brew.sh) tap for [uvim](https://uvim.app), Vim's modal editing in the text fields of your Mac.

```sh
brew install --cask celve/tap/uvim
```

That installs the current release into `/Applications`. uvim then updates itself, and `brew upgrade` updates it too. `brew uninstall --zap --cask uvim` removes it with its settings.

`Casks/uvim.rb` is written by uvim's release script from [`scripts/cask.rb`](https://github.com/celve/uvim/blob/main/scripts/cask.rb): change it there, not here.
