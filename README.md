# Lingua::Stem::Snowball 

Perl6 binding for the "Snowball compiler"
[http://snowballstem.org/](http://snowballstem.org/)

# Status

    - Currently the NativeCalls are implemented.
    - No Snowball code shipped, you need to install it from its own repo.
    - Only the load and sb_stemmer_stem tests are implemented.
    - NEED ASAP to write lots and lots of tests.

# Installation 

 1. You need to install the libstemmer.so shared library from this repository
    [Sufrostico/snowball](https://github.com/Sufrostico/snowball) because the
    [patch to generate the shared
    library](https://github.com/snowballstem/snowball/pull/35) has not been
    accepted yet.

    To install the library

```
    $ git clone git@github.com:Sufrostico/snowball.git sufrostico-snowball
    $ cd sufrostico-snowball
    $ make
```

    Then as root install the .h (usr/include) and .so (user/lib) files.

```
    # make install_shared_library
```

 1. Install this module

```
    $ git clone git@github.com:Sufrostico/perl6-snowball.git
    $ cd perl6-snowball
    $ panda install .
```
