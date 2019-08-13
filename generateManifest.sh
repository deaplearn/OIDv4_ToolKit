#! /bin/bash

wd=`pwd`

cd ${wd}

mkdir -p ./yolo_data/weight
mkdir -p ./yolo_data/train_info
mkdir -p ./yolo_data/valid_info


if [[ "$OSTYPE" == "darwin"* ]]; then
	sed -i '' 's/Apple/0/g' OID/Dataset/train/Apple/Label/yolo_label/*.txt
	sed -i '' 's/Apple/0/g' OID/Dataset/validation/Apple/Label/yolo_label/*.txt

elif [[ "$OSTYPE" == "linux-"* ]]; then
	sed -i 's/Apple/0/g' OID/Dataset/train/Apple/Label/yolo_label/*.txt
	sed -i 's/Apple/0/g' OID/Dataset/validation/Apple/Label/yolo_label/*.txt
fi


cp OID/Dataset/train/Apple/*.jpg ${wd}/yolo_data/train_info/
cp OID/Dataset/validation/Apple/*.jpg ${wd}/yolo_data/valid_info/

cp OID/Dataset/train/Apple/Label/yolo_label/*.txt ${wd}/yolo_data/train_info/
cp OID/Dataset/validation/Apple/Label/yolo_label/*.txt ${wd}/yolo_data/valid_info/

find ${wd}/yolo_data/train_info -name \*.jpg > yolo_data/train.list
find ${wd}/yolo_data/valid_info -name \*.jpg > yolo_data/valid.list



