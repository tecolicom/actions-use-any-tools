# actions-use-x-tools

This Github action is a quick interface to use other `use-x-tools`
actions.  Currently `apt` and `perl` tools are supported.  Common
parameters `cache` and `cache_gen` can be set through this action.  If
you want to use other parameters, use individual action direct.

## Usage

```
# inputs:
#   apt:       { required: false, type: string }
#   perl:      { required: false, type: string }
#   cache:     { required: false, type: string, default: yes }
#   cache_gen: { required: false, type: string, default: v1 }

# outputs:
#   apt-cache-hit:  cache status of apt action
#   perl-cache-hit: cache status of perl action

- uses: office-tecoli/actions-use-x-tools@v0
  with:

    # apt tools
    apt: ''

    # perl tools
    perl: ''

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
    cache_gen: v1

```
