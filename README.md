# actions-use-x-tools

This Github action is a quick interface to use other `use-x-tools` actions.

## usage

```
# inputs:
#   apt:       { required: false, type: string }
#   perl:      { required: false, type: string }
#   cache:     { required: false, type: string, default: yes }
#   cache_gen: { required: false, type: string, default: v1 }

- uses: office-tecoli/actions-use-perl-tools@v0
  with:

    # apt tools
    apt: ''

    # CPAN tools
    perl: ''

    # INSTALL_BASE directory
    #
    # Default: ~/perl5
    install_base: ''

    # Cache strategey
    #
    # yes:      activate cache
    # workflow: effective within same workflow (mainly for test)
    #
    # anything else means 'no'
    cache: yes

    #
    # Cache generation.
    # You can set any string to this parameter and different generation
    # number produces different cache key.
    #
    # Default: v1
    cache_gen: 'v1'

```
