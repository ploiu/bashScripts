function into {
  local dirName="$*"
  [[ -d "$dirName" ]] && cd "$dirName" && return;
  mkdir "$dirName"
  cd "$dirName"
}