#!/bin/bash
readfile(){
    index=0
    while read line ; do
        searcharr[$index]="$line"
        index=$(($index+1))
    done < /home/ubuntu/Desktop/test
}

creategrep(){
    for i in "${searcharr[@]}"; do
        mapfile -t my_array < <( ps -fp $(pgrep -d, -x $i) )
        printf "%s\n" "${my_array[@]}" >> /home/ubuntu/Desktop/test1;
        done
}

readfile
creategrep


#mapfile -t my_array < <( ps -fp $(pgrep -d, -x code) )



# ps -fp $(pgrep -d, -x xterm)
# if pgrep "bin/bash" >/dev/null 2>&1
#   then
#       echo "test is running"
#   else
#       echo "abc is not running" 
# fi





#pidof httpd >/dev/null && echo "Service is running" || echo "Service NOT running"

# my_array=()
# while IFS= read -r line; do
#     my_array+=( "$line" )
# done < <( ps -fp $(pgrep -d, -x code) )
