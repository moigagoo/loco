# Loco: Localization Package for Nim Apps

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
