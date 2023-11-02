
#!/bin/bash

src_dir=/c/Users/Supriya/Downloads/TWS Project/90DaysOfDevOps/2023/day05/submission/scripts
tgt_dir=/c/Users/Supriya/Downloads/TWS Project/90DaysOfDevOps/2023/day05/submission/backups

curr_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")

backup_file=$tgt_dir/$curr_timestamp.tgz

 echo "Taking backup on $curr_timestamp"

 #echo "$backup_file"

 tar czf $backup_file -p $src_dir

  echo "Backup Complete"

