# Finding Max of Every Column

n=$(awk 'END{print NF}' $1); 
yes "cut -d ',' -f z $1 | awk 'BEGIN{m=0} {if(length(\$0)>m){m=length(\$0)}} END{print m}'"| head -n $n>temp;
awk -v n=1 '{gsub(/z/,n);n++;print $0>"scr.sh"}' temp;
sh scr.sh


