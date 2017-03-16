#! /bin/sh

rm -rf ../data
mkdir -p ../data

cd ../data
wget https://dumps.wikimedia.org/enwiki

dt=`cat enwiki | grep "latest" | grep -oE '[0-9]{2}-[[:alpha:]]{3}-[0-9]{4}'`


wget -O enwiki-"$dt"-pages-articles.xml.bz2 -c https://dumps.wikimedia.org/enwiki/latest/enwiki-latest-pages-articles.xml.bz2

rm enwiki
