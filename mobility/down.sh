function down {
  local dirName="$*"
  [[ "$dirName" = "" ]] && dirName=$PWD
  cd $dirName
  # only keep going down if there's only 1 directory
  while [ "$(ls -d ./*/ 2>/dev/null | wc -l)" = "1" ];
  do
    cd $(ls -d */)
  done;
}