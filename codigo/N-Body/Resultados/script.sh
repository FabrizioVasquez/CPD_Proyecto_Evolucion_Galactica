#!/bin/bash
read -p "Introduce la variable (speedup,fuerza,comunicacion,total): " mi_variable
static_columns=('Real Speed = ' 'force: ' 'tot  : ' 'comm : ')
variables=("speedup" "fuerza" "total" "comunicacion")

for N in 5 8 10 16 32 64
do
    for np in 1 2 4 8 16 32 64
    do
        declare tmp_variable
        if [[ "$mi_variable" == ${variables[0]} ]];
        then
            tmp_variable=$(grep ${static_columns[0]} N_$(($N*1024))\_$np.txt -s | awk '{print $4}') # speed
        elif [[ "$mi_variable" == ${variables[1]} ]];
        then 
            tmp_variable=$(grep ${static_columns[1]} N_$(($N*1024))\_$np.txt -s | awk '{print $2}') # fuerza
        elif [[ "$mi_variable" == ${variables[2]} ]];
        then
            tmp_variable=$(grep 'tot  : ' N_$(($N*1024))\_$np.txt -s | awk '{print $3}') #tiempo total
        elif [[ "$mi_variable" == ${variables[3]} ]];
        then
            tmp_variable=$(grep ${static_columns[3]} N_$(($N*1024))\_$np.txt -s | awk '{print $3}') #comunicacion
        else
            echo "BYE"
            break
        fi 
        echo -e $np '\t' $tmp_variable >> $mi_variable\_$(($N*1024)).txt
        
    done
done

