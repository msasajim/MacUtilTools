#!/bin/sh

echo $PWD

echo "check trash files..."
find ./ -name "*.url" -print0 | xargs -0 rm
find ./ -name "*.db" -print0 | xargs -0 rm
find ./ -name "*.txt" -print0 | xargs -0 rm
find ./ -name ".DS_Store" -print0 | xargs -0 rm

echo "start for zip"
for f in *; do echo "${f}"; cd "${f}"; rename -v 's/[^0-9]*//' *; zip -r ../"${f}.zip" * >/dev/null ; cd - >/dev/null; rm -r "${f}"; done

echo "finished."
