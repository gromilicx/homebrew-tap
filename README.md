# Homebrew tap for GEditor

[GEditor](https://github.com/gromilicx/Geditor) is a free terminal code editor with Markdown preview, an integrated terminal, and optional AI chat.

```sh
brew install gromilicx/tap/geditor
ge .
```

The formula installs `geditor` and the short command `ge` using verified release archives. Supported builds: Apple Silicon macOS, Linux x64 and Linux ARM64 (glibc 2.35+). Windows packages are available from [GEditor Releases](https://github.com/gromilicx/Geditor/releases).

Updates:

```sh
brew update
brew upgrade geditor
```

If `ge` was previously installed manually, check `type -a ge` so an older executable in `~/.local/bin` does not take precedence over Homebrew.

License: MIT OR Apache-2.0, matching GEditor.
