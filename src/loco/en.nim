template pluralize*(n: int): untyped =
  ## Pluralizer for English language.

  case n
  of 0: zero n
  of 1, -1: one n
  else: many n
