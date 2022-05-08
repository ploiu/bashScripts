function up {
  local count=$1
  # if count wasn't specified, default to 1
  [[ "$count" = "" ]] && cd ../ && return
  for i in $(seq 1 $count); do cd ../; done
}