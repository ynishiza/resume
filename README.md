Latest [PDF](./pdf/)

# Setup

Compiled in LaTeX.
Template based on https://github.com/c-keyes/CV_template.

Requirements:
- [Tex Live](https://www.tug.org/texlive/)
e.g. [MacTex](https://www.tug.org/mactex/) for macOs.
- [watchman](https://facebook.github.io/watchman/) if using `make watch`.
e.g. Install with `brew install watchman`.


# Usage
```
## Basic
$ make compile
$ make clean

## Watching
#
# Autocompile when a file is changed.
# Requires watchman (https://facebook.github.io/watchman/)
$ make watch
$ make unwatch
```
