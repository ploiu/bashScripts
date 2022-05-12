function blueFg {
      local input="$*"
      local fixedInput=${input/\\033[0m/}
  echo -e "\033[0;34m$fixedInput\033[0m"
}
