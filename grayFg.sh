function grayFg {
      local input="$*"
      local fixedInput=${input/\\033[0m/}
  echo -e "\033[0;37m$fixedInput\033[0m"
}
