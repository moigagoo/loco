**********************************
Loco: Localization Package for Nim
**********************************

.. image:: https://travis-ci.com/moigagoo/loco.svg?branch=develop
    :alt: Build Status
    :target: https://travis-ci.com/moigagoo/loco

.. image:: https://raw.githubusercontent.com/yglukhov/nimble-tag/master/nimble.png
    :alt: Nimble
    :target: https://nimble.directory/pkg/loco


Loco helps localize Nim apps. Uses classic declaratively defined "zero-one-few-many" language variables, but thanks to Nim's superpowers, you also have code completion and compilation checks for language variables.

*   `Repo <https://github.com/moigagoo/loco>`__

    -   `Issues <https://github.com/moigagoo/loco/issues>`__
    -   `Pull requests <https://github.com/moigagoo/loco/pulls>`__

*   `API index <theindex.html>`__
*   `Changelog <https://github.com/moigagoo/loco/blob/develop/changelog.rst>`__


Quickstart
==========

1.  Install Loco with Nimble:

.. code-block::

    $ nimble install loco


2.  Define localizations with ``loco`` macro:

.. code-block:: nim

    # en_US.nim

    import loco

    loco en:
      hello: "hello"
      users:
        zero: "no users"
        one: "{n} user"
        many: "{n} users"

Argument ``en`` is the name of a *pluralizer*. Pluralizer is a module in ``loco`` that defines pluralization rules for a particural language.

3.  Use them in your code as regular functions:

.. code-block:: nim

    # app.nim

    import en_US

    echo hello() & " world"     # → "hello world"
    echo "there's " & 0.users   # → "there's no users"
    echo "there's " & 1.users   # → "there's 1 user"
    echo "there's " & 12.users  # → "there's 12 users"


Contributing
============

Any contributions are welcome, be it pull requests, code reviews, documentation improvements, bug reports, or feature requests.

If you decide to contribute through code, please run the tests after you change the code:

.. code-block::

    $ docker-compose run tests                  # run all tests in Docker
    $ docker-compose run test tests/testen.nim  # run a single test suite in Docker
    $ nimble test                               # run all tests natively
    $ nim c -r tests/testen.nim                 # run a single test suite natively


❤ Contributors ❤
==================

- `@moigagoo <https://github.com/moigagoo>`__
- `@Nindaleth <https://github.com/Nindaleth>`__
