# Loco: Localization Package for Nim Apps

Loco helps you localize your Nim apps with language variables.

1.  Define localizations with `loco` macro:

```nim
# en.nim

import loco

loco en:
  hello: "hello"
  users:
    zero: "no users"
    one: "{n} user"
    many: "{n} users"
```

2.  Use them in your code:

```nim
# app.nim

import en

echo hello() & ", " & 12.users & "!"
```
