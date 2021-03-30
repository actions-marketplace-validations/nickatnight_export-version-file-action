<p align="center">
  <a href="https://github.com/nickatnight/export-version-file-action/actions"><img alt="GitHub Actions status" src="https://github.com/nickatnight/export-version-file-action/actions/workflows/main.yml/badge.svg?branch=master"></a>
  <a href="https://github.com/nickatnight/export-version-file-action/releases"><img alt="Release Status" src="https://img.shields.io/github/v/release/nickatnight/export-version-file-action"></a>
</p>

# :envelope_with_arrow: export-version-file-action

A GitHub action to write a "version" file to project root by fetching the latest tag and writing it to file.

## Usage
```yaml
name: export version file

on:
  release:
    types: [released]

jobs:
  export-version-file-action:
    runs-on: ubuntu-latest
    steps:
      - name: export version file action
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}  # this is added for you by default
        uses: nickatnight/export-version-file-action@master
        with:
          branch: "main"            # optional...defaults to 'master'
          filename: "tag"           # optional...defaults to '__version__'
```

## Acknowledgements
- [halik](https://github.com/ironhalik) - for README template and alpine hacks
