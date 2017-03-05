function dfm () {
  if [ "$1" == "cd" ]
  then
    cd $(command dfm path)
  	return 0
  fi
  if [ "$1" == "update" ]
  then
    curl -o- https://raw.githubusercontent.com/benjamincaldwell/dfm/master/scripts/install.sh | bash
    return 0
  fi
  command dfm "$@"
}
