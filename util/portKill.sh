function portKill {
  [[ "$1" == "" ]] && read port || port="$1"
  # from https://stackoverflow.com/questions/5043808/how-to-find-processes-based-on-port-and-kill-them-all
  lsof -i tcp:${port} | awk 'NR!=1 {print $2}' | xargs kill
}