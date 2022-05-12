function purpleFg {
      local input="$*"
      local fixedInput=${input/\\033[0m/}
  echo -e "\033[0;35m$fixedInput\033[0m"
}
