function cyanBg {
      local input="$*"
      local fixedInput=${input/\\033[0m/}
  echo -e "\033[0;46m$fixedInput\033[0m"
}
