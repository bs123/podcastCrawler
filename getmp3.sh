#/bin/sh
echo "usage  ./getmp3.sh file.html mp_type "
#for file in $(grep mp4 mp3-download-podcast-gmbh.shtml | cut -d "\\"" -f 4 | sort -u)
#for file in $(grep $2 $1  | cut -d "\"" -f 4 | sort -u)
# for file in $(grep $2 $1  | cut -d "=" -f3 | sed 's/\>//g')
#for file in $(grep $2 $1  | cut -d "=" -f3 | grep http | cut \"  | sort -u)
#for file in $(grep $2 $1  | cut -d "=" -f3 | grep http | sed 's/\"//g'  | sort -u)
#for file in $(grep -Eo "\"http:.*.$2\"" $1 | grep $2  | sed 's/\"//g'  | sort -u)
#for file in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g' | grep wdr | grep -v ">" | sort -u)
#for file in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g'| grep -v ">" | sort -u)
#for file in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g' | cut -d '>' -f1 | sort -u)

#todo chunks of 10
#ps h -C "wget" | wc -l
#declare -i pCount

#Podster xml
#for file in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g' | sort -u) # > tmp.txt
#for file in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g' | grep -v ">"| sort -u)
#for file in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g'| cut -d '>' -f1 | grep cdn | sort -u)
for file in $(grep -Eo "http:.*.$2" $1 | grep $2  | sed 's/\"//g'| cut -d '>' -f1 | grep cdn)
#TODO duppletten weg ohne sort
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
      # wget $file &

  done

#check, ACHTUNG Edit of file, only work on Copy!
# for f in *.mp3 ; do  sed -i 's/\^*'$f'/xxxXxxx/g' radiowissenBis150722_links_2_check2.txt;  sleep 2 ; done

# sed 's/\^*150109_0905_radioWissen_Andere-Laender-andere-Satiren---Korresponde.mp3/xxx/g'  radiowissenBis150218_5.txt
