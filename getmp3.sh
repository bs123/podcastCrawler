#/bin/sh
echo "usage  ./getmp3.sh file.html mp_type "

#for url in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g'| cut -d '>' -f1 | grep cdn)
#TODO duppletten weg ohne sort
#for url in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g'| cut -d '>' -f1 | grep cdn | sort -u)
#for url in $( grep -Eo "https:.*.$2" $1)
# sed  's/url/\n/g' ../1000antworten.xml > 1000antworten.txt 
# sed  's/url/\n/g' wissen.xml > wissen.txt 
#  split -l 500 1000antworten3.txt 

# for url in $( grep -Eo "https:.*.$2" $1 | sort -u)
for url in $( grep -Eo "https:.*.$2" $1 )

#for url in $(grep $2 $1 )
  do
  #echo  ${url:0:${#url}-1}

    while [ `/bin/ps h -C "wget" | /usr/bin/wc -l`  -gt 7 ]
     do
       sleep 20
       #echo `/bin/ps h | /usr/bin/wc -l`
       #/bin/ps h -C "wget"
     done
      file=`echo $url |  grep -oE "[^/]+$"`
     
      if [ ! `/usr/bin/find -type f -name $file | grep "."` ]
        then
          echo 2222
          echo $file
          #wget $url &
      fi
  done
