func lastDigit(n: int): 0..9 = abs(n) mod 10

func lastTwoDigits(n: int): 0..99 = abs(n) mod 100

template pluralize*(n: int): untyped =
  ## Pluralizer for Russian language.

  case n
  of 0: zero n
  else:
    case lastDigit n
    of 1:
      case lastTwoDigits n
      of 11: many n
      else: one n
    of 2..4:
      case lastTwoDigits n
      of 12..14: many n
      else: few n
    of 0, 5..9: many n
