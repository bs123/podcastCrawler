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

      echo  $url
  done
