# /usr/bin/bash
# This script is used to filter records of given file by
# checking criteria = if field name = field value
# positional arguments 1-filename(csv), 2-field name, 3-field value.
let num_of_rec=$(grep -i $3 $1 | wc -l)
strings=$(echo $@)
count=1
for str in $strings
do
	if [[ count -eq 1 ]];
	then
		filename+=${str:0:2}
	else
		filename+="_$str"
	fi
	((count+=1))
done
filename+=".csv"
if [[ $num_of_rec -gt 0 ]];
then
	echo $num_of_rec records are found!
	echo "The results are saved in file $filename"
	echo $1, $2, $3, $num_of_rec > $filename
	head -n 1 $1 >> $filename
	grep -i $3 $1 >> $filename
else
	echo "No records matching '$3' $2 were found in the file '$1'!"
fi
