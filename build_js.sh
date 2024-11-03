#!/usr/bin/env sh
gleam export javascript-prelude > public/js_prebuild.js

gleam compile-package --target javascript \
  --javascript-prelude public/js_prebuild.js \
  --package . \
  --out public/james_games \
  --lib build/dev/javascript

