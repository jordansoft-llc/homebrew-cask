# Homebrew tap for Pellucid

Apple Silicon (macOS 26+) desktop app for annotating, filling and organizing PDFs.

## Install

```bash
brew install --cask jordansoft-llc/cask/pellucid
```

If Homebrew asks you to trust this tap on first use, run:
`brew trust jordansoft-llc/cask` and retry the install.

## Updates

The cask uses a `livecheck` against the vendor version feed
(https://pellucid-pdf.com/updates/stable.json). When a new version ships, the cask
definition here is bumped and `brew upgrade` picks it up.

## Links

- Homepage: https://pellucid-pdf.com/
