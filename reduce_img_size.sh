#! /bin/sh

TARGET_DIR=resized

if [ $# -ne 1 ]
then
	echo "usage $0 <PATTERN|*.jpg|*.png|file.jpg>"
	exit 1
fi 
PATTERN=$1

mkdir -v $TARGET_DIR
RET_CODE=$?
if [ $RET_CODE -eq 0 ];then
  mogrify -resize 800x600 -path $TARGET_DIR $PATTERN
  RET_CODE=$?
  if [ $RET_CODE -eq 0 ];then
    echo "resized files can bo found in $TARGET_DIR"
  else
    echo "an error occured during file resize"
  fi
fi

exit $RET_CODE
