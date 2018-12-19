# Package

version       = "0.1.0"
author        = "Konstantin Molchanov"
description   = "Localization package for Nim."
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 0.19.0"

task docs, "Generate and upload API docs":
  exec "nim doc src/loco.nim"
  exec "ghp-import -np src"
