 #!/bin/bash
 
 dir_name=$1
 start_num=$2
 end_num=$3


 for ((i=$start_num; i<=$end_num; i++))
 do
	 mkdir -p $dir_name$i
 done
