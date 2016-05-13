#/bin/sh

if [ $# -ne 1 ];then
  echo "USAGE $0 <ROLE_NAME>"
  exit 1
else
  CURRENT_DIR=$(pwd)
  ROLE=$1
  mkdir -v ${CURRENT_DIR}/${ROLE}
  mkdir -v ${CURRENT_DIR}/${ROLE}/{tasks,handlers,templates,files,vars,defaults,meta}
  for DIR in tasks handlers vars defaults meta
  do
    FILE=${CURRENT_DIR}/${ROLE}/${DIR}/main.yml
    if [ -f ${FILE} ]; then
      echo "the main.yml already exists, you should remove it manually : rm -vf ${FILE}"
    else
      echo "---" > ${FILE}
      echo "${FILE} created successfuly"
    fi
  done
fi
