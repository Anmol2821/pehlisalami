#!/usr/bin/env bash
# Regenerates index.html (standalone page) from artifact.html (the Claude artifact source).
set -euo pipefail
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n</head>\n<body>\n'; cat artifact.html; printf '\n</body>\n</html>\n'; } > index.html
echo "index.html rebuilt"
