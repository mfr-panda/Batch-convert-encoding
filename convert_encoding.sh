#!/bin/sh
#
# REQUIRED : 'moreutils' is needed to test if encoding is UTF-8 or not.
# install with : apt install moreutils 
#
# SOURCE ENCODING
sourceEncoding='Windows-1252'
# OUTPUT ENCODING
outputEncoding='UTF-8'
# FILE TYPE (txt in this sample)
fileType='txt'
# SEARCH FOR FILES BY TYPE
for filename in `find . -type f -name '*.'$fileType`
do
# TEST IF SOURCE SI UTF-8 OR NOT
isutf8 $filename
if [ $? = 0 ]
then
echo "utf8 file"
else
echo "Not utf8 file"
# BACKUP OF SOURCE FILE
mv $filename $filename.save
# CONVERT TO UTF-8 AND WRITE FILE
iconv -f $sourceEncoding -t $outputEncoding $filename.save -o $filename
# UNCOMMENT TO REMOVE *.save BACKUP FILE
#rm $filename.save
fi
done
