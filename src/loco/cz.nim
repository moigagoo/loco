template pluralize*(n: int): untyped =
  ## Pluralizer for Czech language.

  case abs(n)
    of 1: one n
    of 2..4: few n
    else: many n
