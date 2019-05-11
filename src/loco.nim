import macros, strformat


template importLang(lang: untyped): untyped =
  import loco/lang

template simpleLangVar(name, translation: untyped): untyped =
  func name*(): string = translation

template tierTranslation(tier, translation: untyped): untyped =
  template tier(n: int): string = &translation

template pluralizeCall(lang: untyped): untyped =
  lang.pluralize n

macro loco*(lang, body: untyped): untyped =
  ##[ Declare localizations for ``lang``:

  .. code-block:: nim

      loco en:
        hello: "hello"
        users:
          zero: "no users"
          one: "{n} user"
          many: "{n} users"

  For each declaration, a function of the same name is generated. For simple declarations, like ``hello``, the function has no arguments. For complex declarations that depend on quantity, the function takes a single argument ``n: int``.

  Four tiers can be used in complex declarations: ``zero``, ``one``, ``few``, and ``many``. Whether you use all of them or just some, depends on the language. In Russian, all four are necessary. In English, ``few`` is not required. The tiers are utilized in ``pluralize`` templates for each language.

  Tier translations are declared in ``strformat`` syntax: ``{n}`` is replaced with the number you pass to the generated function:

  .. code-block:: nim

      echo 0.users  # → "no users"
  ]##

  result = newStmtList()

  result.add getAst importLang(lang)

  for node in body:
    let
      langVarName = node[0]
      translations = node[1]

    case translations[0].kind
    of nnkStrLit:
      result.add getAst simpleLangVar(langVarName, translations[0])

    of nnkCall:
      var body = newStmtList()

      for tier in translations:
        body.add getAst tierTranslation(tier[0], tier[1][0])

      body.add getAst pluralizeCall(lang)

      result.add newProc(
        postfix(langVarName, "*"),
        [ident"string", newIdentDefs(ident"n", ident"int")],
        body,
        nnkFuncDef
      )

    else: discard
