# actions-use-any-tools

![actions-use-any-tools](https://github.com/office-tecoli/actions-use-any-tools/actions/workflows/test.yml/badge.svg)

This Github action is a quick interface to use other `use-*-tools`
actions.  Currently
[`apt`](https://github.com/office-tecoli/actions-use-apt-tools),
[`brew`](https://github.com/office-tecoli/actions-use-brew-tools),
[`perl`](https://github.com/office-tecoli/actions-use-perl-tools)
and
[`python`](https://github.com/office-tecoli/actions-use-python-tools)
tools are supported.  Common parameters `cache` and `cache-gen` can be
set through this action.  If you want to use other parameters, use
individual action direct.

## Usage

```yaml
# inputs:
#   apt:       { required: false, type: string }
#   brew:      { required: false, type: string }
#   perl:      { required: false, type: string }
#   python:    { required: false, type: string }
#   cache:     { required: false, type: string, default: yes }
#   cache-gen: { required: false, type: string, default: v1 }

# outputs:
#   apt-cache-hit:  cache status of apt action
#   brew-cache-hit: cache status of brew action
#   perl-cache-hit: cache status of perl action
#   python-cache-hit: cache status of python action

- uses: office-tecoli/actions-use-any-tools@v0
  with:

    # apt tools
    apt: ''

    # brew tools
    brew: ''

    # perl tools
    perl: ''

    # python tools
    python: ''

    # Cache strategey
    #
    # yes:      activate cache
    # workflow: effective within same workflow (mainly for test)
    # no:       no cache
    #
    cache: yes

    #
    # Cache generation.
    # You can set any string to this parameter and different generation
    # number produces different cache key.
    #
    # Default: v1
    cache-gen: v1

```

## Example

```yaml
- uses: office-tecoli/actions-use-any-tools@v0
  with:
    apt:    bmake
    brew:   rcs cvs
    perl:   App::ansiecho
    python: diff-highlight
```

```yaml
- uses: office-tecoli/actions-use-any-tools@v0
  with:
    apt: >-
      bmake
    brew: >-
      rcs
      cvs
    perl: >-
      App::Greple
      App::optex::textconv
      App::sdif
    python: >-
      diff-highlight
```
