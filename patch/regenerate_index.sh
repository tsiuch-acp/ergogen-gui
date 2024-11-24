#!/usr/bin/env bash
# Code taken from https://github.com/vigilancer/ergogen-docker/blob/master/fetch-footprints.sh
# All credits @vigilancer

[ -z $DEBUG ] || set -x
set -eu -o pipefail

m() {
  ## Usage# m "$MESSAGE"
  printf "[- INFO --- ] $1\n"
}

do_update_index() {
  local dir="$1"
  local index="index.js"
  [ -d "$dir" ] || err "Directory "$dir" does not exist" 98
  m "Updating index $dir/$index ..."

  cd "$dir"
  [ -f "$index" ] && rm "$index"

  echo "module.exports = {" >> "$index"

  # level 1
  for f in $(find . -maxdepth 1 -name "*.js" | sort); do
    echo $f
    [ -f "$f" ] || continue
    local mfile=$(echo $f | perl -pe 's/.js$//')
    local mname=$(echo $mfile | perl -pe 's/^\.\///')

    [ "$mfile" != "index" ] || continue
    echo "    $mname: require('$mfile')," >> "$index"
  done

  # level 2
  for f in $(find . -mindepth 2 -maxdepth 2 -name "*.js" | sort); do
    echo $f
    [ -f "$f" ] || continue
    local mfile=$(echo $f | perl -pe 's/.js$//')
    local mname=$(echo $mfile | perl -pe 's/^\.\///')

    [ "$mfile" != "index" ] || continue
    echo "    '$mname': require('$mfile')," >> "$index"
  done

  echo "}" >> "$index"
  cd -
  m "Done updating"
}

do_update_index $1