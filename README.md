# podcastCrawler
I have a low data tarif and like to listen these Podcats.

upcomming
*node-ify
*gernerlize for all podcasts
* delta

## Bayern 2 - IQ - Wissenschaft und Forschung
wget http://www.br-online.de/podcast/mp3-download/bayern2/mp3-download-podcast-iq.shtml

## Bayern 2 - radioWissen
wget http://www.br-online.de/podcast/mp3-download/bayern2/mp3-download-podcast-radiowissen.shtml

### stuff
./getmp3.sh mp3-download-podcast-radiowissen.shtml mp3 > all.txt
strip:
todo check
check, ACHTUNG Edit of file, only work on Copy!
 for f in *.mp3 ; do  sed -i 's/\^*'$f'/xxxXxxx/g' radiowissenBis150722_links_2_check2.txt;  sleep 2 ; done

 sed 's/\^*150109_0905_radioWissen_Andere-Laender-andere-Satiren---Korresponde.mp3/xxx/g'  radiowissenBis150218_5.txt


suche was schon da ist
grep -n 161209 mp3-download-podcast-radiowissen.shtml 
vi :ZeilenNr,$d (lösche bis datei ende)
17144

./getmp3.sh mp3-download-podcast-radiowissen.shtml mp3 > all2.txt
