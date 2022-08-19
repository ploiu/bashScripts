function to {
  local dir="$*"
  local origDir="$(pwd)"
  while [ ! -e "$dir" ]; do
    cd ..
    if [ "$(pwd)" = "/" ]; then
      echo "directory not found; returning"
      cd $origDir
      return
    fi
  done
  cd $dir
  # dir exists, register it with back
  export backDir="$origDir"
}
