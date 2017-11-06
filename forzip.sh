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
find ./ -name "単ページ" -print0 | xargs -0 rm -r
find ./ -name "*.vix" -print0 | xargs -0 rm

# process
echo "start for zip"
for f in *;
do
  # move to the directory
  echo "${f}"
  cd "${f}"
  # delete folder
  find . -maxdepth 1 -mindepth 1 -type d -print0 | xargs -0 rm -r
  # rename file
  rename -v 's/[^0-9]*//' *
  # change filename to small capital
  #for file in *; do cfile=`echo "${file}" | tr A-Z a-z`; mv "${file}" "${cfile}"; done
  rename -c -f *
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