#!/bin/bash
filename=$(eval echo \$$#)
usage () {
    echo "./`basename $0` [-a] [-c] [-t lines] [-h] filename"
}

if [ $# -lt 2 ];then
    usage
    exit 1
fi

while getopts ":act:h" opt
do
  case $opt in
    a)
      cat $filename
      ;;
    c)
      eval wc -l $filename
      ;;
    t)
      if [ $# -lt 3 ];then
          usage
          exit 1
      fi

      var=$(echo $OPTARG|bc 2>/dev/null)
      if [ $OPTARG != $var ];then
          echo "-a option argument must be an integer."
          exit 1
      fi

      tail -$OPTARG $filename
      ;;
    h)
      usage
      ;;
    ?)
      echo "invalid option.try run './`basename $0` -h'"
      ;;
    :)
      echo "missing option argument."
      ;;
  esac
done
