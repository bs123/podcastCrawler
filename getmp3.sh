#/bin/sh
echo "usage  ./getmp3.sh file.html mp_type "

#for file in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g'| cut -d '>' -f1 | grep cdn)
#TODO duppletten weg ohne sort
#for file in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g'| cut -d '>' -f1 | grep cdn | sort -u)
#for file in $( grep -Eo "https:.*.$2" $1)
# sed  's/url/\n/g' ../1000antworten.xml > 1000antworten.txt 
# sed  's/url/\n/g' wissen.xml > wissen.txt 
#  split -l 500 1000antworten3.txt 


# for file in $( grep -Eo "https:.*.$2" $1 | sort -u)
for file in $( grep -Eo "https:.*.$2" $1 )

 #find -type f -name "wo-ist-das-zentrum-unseres-universums.6444m.mp3" | grep -q "."


#for file in $(grep $2 $1 )
  do
  #echo  ${file:0:${#file}-1}

    while [ `/bin/ps h -C "wget" | /usr/bin/wc -l`  -gt 7 ]
     do
       sleep 20
       #echo `/bin/ps h | /usr/bin/wc -l`
       #/bin/ps h -C "wget"
     done

      echo  $file |  grep -oE "[^/]+$"
      #wget $file &

  done
