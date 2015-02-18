
#!/bin/bash
if [ -z "$1" ]; then
  echo "Missing pacakge list argument."
  echo "e.g. ./"`basename $0` "pkgs.list"
  exit 1
fi

final=''
while read p; do
  data=`echo $p | awk -F\  ' { print $2 } ' | awk -F: ' { print $1 }'`
  final+="$data "
done < $1

apt-get purge $final
apt-get autoremove
