# Loco: Localization Package for Nim

[![Build Status](https://travis-ci.com/moigagoo/loco.svg?branch=develop)](https://travis-ci.com/moigagoo/loco)

Loco helps localize Nim apps. Uses classic declaratively defined "zero-one-few-many" language variables, but thanks to Nim's superpowers, you also have code completion and compilation checks for language variables.

1.  Define localizations with `loco` macro:

    ```nim
    # en_US.nim

    import loco

    loco en:
      hello: "hello"
      users:
        zero: "no users"
        one: "{n} user"
        many: "{n} users"
    ```

    Argument `en` is the name of a *pluralizer*. Pluralizer is a module in `loco` that defines pluralization rules for a particural language.


        As of version 0.1.0, Loco ships with two pluralizers: `en` for English and `ru` for Russian. Contributions are very welcome.

2.  Use them in your code as regular functions:

    ```nim
    # app.nim

    import en_US

    echo hello() & " world"     # → "hello world"
    echo "there's " & 0.users   # → "there's no users"
    echo "there's " & 1.users   # → "there's 1 user"
    echo "there's " & 12.users  # → "there's 12 users"
    ```


- [API docs →](https://moigagoo.github.io/loco/loco.html)
- [Contributing info →](#contributing)


## Installation

Install Norm with Nimble:

```shell
$ nimble install loco
```


## Contributing

Any contributions are welcome, be it pull requests, code reviews, documentation improvements, bug reports, or feature requests.

If you decide to contribute through code, please run the tests after you change the code:

```shell
$ docker-compose run tests                  # run all tests in Docker
$ docker-compose run test tests/testen.nim  # run a single test suite in Docker
$ nimble test                               # run all tests natively
$ nim c -r tests/testen.nim                 # run a single test suite natively
```


### ❤ Contributors ❤

- [@moigagoo](https://github.com/moigagoo)
- [@Nindaleth](https://github.com/Nindaleth)
