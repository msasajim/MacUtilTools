#!/bin/sh

# initialize
echo $PWD

# check trash files
echo "check trash files..."
find -E ./ -type f -iregex ".*\.(url|db|text|txt|vix|rar|zip)" -print0 | xargs -0 rm
find ./ -name ".DS_Store" -print0 | xargs -0 rm
find ./ -name "*..*" -print0 | xargs -0 rm

# check trach directories
echo "check trash directories..."
find ./ -name "単ページ" -print0 | xargs -0 rm -r

# process
echo "start for zip"
for f in *;
do
  # move to the directory
  echo "${f}"
  cd "${f}"
  # delete folders
  find . -maxdepth 1 -mindepth 1 -type d -print0 | xargs -0 rm -r
  # rename file
  rename -v 's/[^0-9]*//' *
  rename -s 'jpeg' 'jpg' *
  rename -s " - p" "_" *
  rename -v "s/\ \[[A-Za-z0-9]*\]//" *
  rename -v "s/imgs\-//" *
  # change filename to small capital
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
