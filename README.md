# actions-use-x-tools

![actions-use-x-tools](https://github.com/office-tecoli/actions-use-x-tools/actions/workflows/test.yml/badge.svg)

This Github action is a quick interface to use other `use-*-tools`
actions.  Currently
[`apt`](https://github.com/office-tecoli/actions-use-apt-tools) and
[`perl`](https://github.com/office-tecoli/actions-use-perl-tools)
tools are supported.  Common parameters `cache` and `cache-gen` can be
set through this action.  If you want to use other parameters, use
individual action direct.

## Usage

```yaml
# inputs:
#   apt-tools:  { required: false, type: string }
#   perl-tools: { required: false, type: string }
#   cache:      { required: false, type: string, default: yes }
#   cache-gen:  { required: false, type: string, default: v1 }

# outputs:
#   apt-cache-hit:  cache status of apt action
#   perl-cache-hit: cache status of perl action

- uses: office-tecoli/actions-use-x-tools@v0
  with:

    # apt tools
    apt-tools: ''

    # perl tools
    perl-tools: ''

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
- uses: office-tecoli/actions-use-x-tools@v0
  with:
    apt-tools:  bmake
    perl-tools: App::ansiecho
```

```yaml
- uses: office-tecoli/actions-use-x-tools@v0
  with:
    apt-tools:  >-
      bmake
    perl-tools: >-
      App::Greple
      App::optex::textconv
      App::sdif
```
