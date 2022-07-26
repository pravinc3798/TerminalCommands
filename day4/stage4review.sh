#!/bin/bash

echo -e "\n #Question : Append current date to all log files name which has extension .log from a folder and move the files to respective directory \n"

if [ -d solution ]
then
	rm -r solution
fi
mkdir solution
cd solution

echo -e "[+] Creating solution folder \n"

filenames="abc def ghi jkl mno"
extension=".log"

for name in $filenames
do
	echo "[+] File $name$extension created";
	touch $name$extension;

	rename=`echo $name$extension | awk -F . '{print $1 "-" d "." $2}' d="$(date +%Y%m%d)"`
	echo "[+] Renaming $name$extension to $rename"
	mv $name$extension $rename

	foldername=`echo $rename | awk -F . '{print $1}'`
	echo "[+] Creating directory $foldername/"
	mkdir $foldername

	echo "[+] Moving file $rename to $foldername/"
	mv $rename $foldername

	echo " "
done

