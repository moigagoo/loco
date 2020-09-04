# Package

version       = "0.1.2"
author        = "Konstantin Molchanov"
description   = "Localization package for Nim."
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 0.19.0"


# Tasks

task apidoc, "Generate API docs":
  --outdir: "htmldocs"
  --git.url: https://github.com/moigagoo/loco/
  --git.commit: develop
  --project
  --index:on

  setCommand "doc", "src/loco"

task idx, "Generate index":
  selfExec "buildIndex --out:htmldocs/theindex.html htmldocs"

task docs, "Generate docs":
  rmDir "htmldocs"
  exec "nimble apidoc"
  exec "nimble idx"
  exec "nim rst2html -o:htmldocs/index.html README.rst"
  cpFile("CNAME", "htmldocs/CNAME")
