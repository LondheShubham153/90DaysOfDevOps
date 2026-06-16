touch notes.txt
echo "Line 1" > notes.txt
echo "Line 2" >> notes.txt
echo "Line 3" >> notes.txt | tee -a notes.txt
cat notes.txt
head -n 2 notes.txt
tail -n 2 notes.txt
df -h | tee disk.txt


touch is used to Create Files
> Overwrite files
>> Add contents in File
head to read starting lines of Files
tail to read ending lines of files
tee write and display same time
