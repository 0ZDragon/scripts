#!/bin/bash
# 察看参数二是否存在
if [ -e ./$2 ]
then
	echo "$2 already exists, exit."
	exit
fi

# 更改参数二文件格式
cp $1 $2
dos2unix $2

# 更改码表格式为tab+hspnz
sed -i 's/ /\t/g' $2
sed -i 's/1/h/g' $2
sed -i 's/2/s/g' $2
sed -i 's/3/p/g' $2
sed -i 's/4/n/g' $2
sed -i 's/5/z/g' $2

# 将 rime 码表头部写入参数二文件头部
# 请勿改动 rimehead.yaml 文件
cat ./rimehead.yaml $2 > strokeconverttempfile && mv strokeconverttempfile $2

# 替换时间
sed -i "s/DDAATTEE/`date`/g" $2
