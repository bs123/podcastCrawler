#/bin/sh
echo "usage  ./getmp3.sh file.html mp_type "

for file in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g'| cut -d '>' -f1 | grep cdn)
#TODO duppletten weg ohne sort
#for file in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g'| cut -d '>' -f1 | grep cdn | sort -u)

#for file in $(grep $2 $1 )
  do
  #echo  ${file:0:${#file}-1}

    while [ `/bin/ps h -C "wget" | /usr/bin/wc -l`  -gt 7 ]
     do
       sleep 20
       #echo `/bin/ps h | /usr/bin/wc -l`
       #/bin/ps h -C "wget"
     done

      echo  $file
      #wget $file &

  done
