function greenFg {
      local input="$*"
      local fixedInput=${input/\\033[0m/}
  echo -e "\033[0;32m$fixedInput\033[0m"
}
