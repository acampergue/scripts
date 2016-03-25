#! /bin/sh

TARGET_DIR=resized
#TARGET_RES=800x600
#TARGET_RES=1024x768
TARGET_RES=1280x1024

if [ $# -ne 1 ]
then
	echo "usage $0 <PATTERN|*.jpg|*.png|file.jpg>"
	exit 1
fi 
PATTERN=$1

mkdir -v $TARGET_DIR
RET_CODE=$?
if [ $RET_CODE -eq 0 ];then
  mogrify -resize $TARGET_RES -path $TARGET_DIR $PATTERN
  RET_CODE=$?
  if [ $RET_CODE -eq 0 ];then
    echo "resized files can bo found in $TARGET_DIR"
  else
    echo "an error occured during file resize"
  fi
fi

exit $RET_CODE
