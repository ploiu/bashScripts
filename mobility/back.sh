function back {
  if [ "$backDir" == "" ];
  then
    echo $(redFg "nowhere to go back to") > /dev/tty
  else
    to "$backDir"
  fi;
}
