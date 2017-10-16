#!/bin/sh

# initialize
echo $PWD

# check trash files
echo "check trash files..."
find ./ -name "*.url" -print0 | xargs -0 rm
find ./ -name "*.db" -print0 | xargs -0 rm
find ./ -name "*.txt" -print0 | xargs -0 rm
find ./ -name "*.rar" -print0 | xargs -0 rm
find ./ -name ".DS_Store" -print0 | xargs -0 rm

# process
echo "start for zip"
#for f in *; do echo "${f}"; cd "${f}"; rename -v 's/[^0-9]*//' *; zip -r ../"${f}.zip" * >/dev/null ; cd - >/dev/null; rm -r "${f}"; done
for f in *;
do
  # move to the directory
  echo "${f}"
  cd "${f}"
  # rename file
  rename -v 's/[^0-9]*//' *
  # zip file
  zip -r ../"${f}.zip" * >/dev/null
  # back to the directory
  cd - >/dev/null
  # delete the directory
  rm -r "${f}"
done


# completed
echo "finished."
exit 0