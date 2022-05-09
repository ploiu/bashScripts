function up {
  local count=$1
  # if count wasn't specified, default to 1
  [[ "$count" = "" ]] && cd ../ && return
  for _ in $(seq 1 $count); do cd ../; done
}