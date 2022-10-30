# actions-use-any-tools

![actions-use-any-tools](https://github.com/tecoli-com/actions-use-any-tools/actions/workflows/test.yml/badge.svg)

This GitHub action is a quick interface to use other `use-*-tools`
actions.  Currently
[`apt`](https://github.com/tecoli-com/actions-use-apt-tools),
[`homebrew`](https://github.com/tecoli-com/actions-use-homebrew-tools),
[`perl`](https://github.com/tecoli-com/actions-use-perl-tools),
[`python`](https://github.com/tecoli-com/actions-use-python-tools)
and
[`ruby`](https://github.com/tecoli-com/actions-use-ruby-tools)
tools are supported.  Common parameters `cache` and `key` can be
set through this action.  If you want to use other parameters, use
individual action direct.

## Usage

```yaml
# inputs:
#   apt:      { required: false, type: string }
#   homebrew: { required: false, type: string }
#   perl:     { required: false, type: string }
#   python:   { required: false, type: string }
#   ruby:     { required: false, type: string }
#   cache:    { required: false, type: string, default: yes }
#   key:      { required: false, type: string }

# outputs:
#   apt-cache-hit:      cache status of apt action
#   homebrew-cache-hit: cache status of homebrew action
#   perl-cache-hit:     cache status of perl action
#   python-cache-hit:   cache status of python action
#   ruby-cache-hit:     cache status of ruby action

- uses: tecolicom/actions-use-any-tools@v1
  with:

    # apt tools
    apt: ''

    # homebrew tools
    homebrew: ''

    # perl tools
    perl: ''

    # python tools
    python: ''

    # ruby tools
    ruby: ''

    # Cache strategy
    #
    # yes:      activate cache
    # workflow: effective within same workflow (mainly for test)
    # no:       no cache
    #
    cache: yes

    # Additional cache key
    key: ''

```

## Example

```yaml
- uses: tecolicom/actions-use-any-tools@v1
  with:
    apt:      bmake
    homebrew: rcs cvs
    perl:     App::ansiecho
    python:   legit
    ruby:     sinatra
```

```yaml
- uses: tecolicom/actions-use-any-tools@v1
  with:
    apt: >-
      bmake
    homebrew: >-
      rcs
      cvs
    perl: >-
      App::Greple
      App::optex::textconv
      App::sdif
    python: >-
      legit
    ruby: >-
      sinatra
```

## See Also

### [tecoli-com/actions](https://github.com/tecoli-com/actions)

- [`apt`](https://github.com/tecoli-com/actions-use-apt-tools)
- [`homebrew`](https://github.com/tecoli-com/actions-use-homebrew-tools)
- [`perl`](https://github.com/tecoli-com/actions-use-perl-tools)
- [`python`](https://github.com/tecoli-com/actions-use-python-tools)
- [`ruby`](https://github.com/tecoli-com/actions-use-ruby-tools)
