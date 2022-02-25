#!/bin/bash
echo "made by human, from Earth"
echo "Program name 'Index Descriptor'"
echo "The program is needed to determine whether the descriptor has changed"

while true; do

    while true; do
    
    echo -e "Current directory: `pwd` "
echo " "
echo " "
    
        while true;do
            echo -n 'имя файла: '
    
            read
    
            NAME=$PWD/$REPLY
    
            if  [ ! -f $NAME ];then
                echo "ERROR: файл $NAME не существует!"
    
                else
                    break;
            fi
            done

    echo "Enter the date by from YYYYMMDD:"
    read -p 'Введите дату в виде <год>-<месяц>-<день> <часы>:<минуты>:<секунды> (например, 2019-12-31 23:59:59) : ' date_str
DATE=$(date -d "$date_str" +%s)
    echo "$DATE"
    echo "$date_str"
    Time=$(stat -c %z "$NAME")
    echo "$Time"
    if [[ $Time > $DATE ]]
    then
        exit 120
    else
        echo "Vot tak vot"
    fi
    break    
done

echo "The program has ended. Do you want to continue? (y/n)"
		read yn
                if [ $yn = y ]
                then continue
                else break
                fi

done    
