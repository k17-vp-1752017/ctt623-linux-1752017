#! /bin/bash
# ================================================
# Ho va ten : Nguyen Thi Quynh Hoa
# MSSV : 1752017
# Ma bai tap : BTTH03
# ================================================

echo -n "Nhap duong dan: "

read a
while ! test -d $a
do
	echo "Duong dan khong ton tai. Nhap lai: "
	read a
done
cat $a
cd $a
echo "Ban co muon xoa toan bo noi dung thu muc va tiep tuc khong?[y/n]: "
read answer
if [ $answer == "y" ]
then
    rm -f * $a
else
    echo "Thu muc giu nguyen"
fi
cd ..
mkdir BTTL
mkdir BTTH
echo "Thu muc BTTL va BTTH da tao xong"
cd BTTL
mkdir BTTL{1,2,3,4,5,6,7,8,9}
echo "Thu muc da tao xong"
touch BTTL{1,2,3,4,5,6,7,8,9}/1752018.sh
chmod ugo+x BTTL{1,2,3,4,5,6,7,8,9}/1752018.sh
cd ..
k=1
while [ $k -le 9 ]
do
	for d in BTTL; do
	echo "# ================================================
# Ho va ten: Nguyen Thi Quynh Hoa
# MSSV: 1752017
# Ma bai tap: BTTH03
# ================================================
#" > BTTL/BTTL$k/1752018.sh
	((k++))
	done
done


cd BTTH
mkdir BTTH{1,2,3,4,5,6,7,8,9}
echo "Thu muc da tao xong"
touch BTTH{1,2,3,4,5,6,7,8,9}/1752018.sh
chmod ugo+x BTTH{1,2,3,4,5,6,7,8,9}/1752018.sh
cd ..
l=1
while [ $l -le 9 ]
do
	for d in BTTH; do
	echo "# ================================================
# Ho va ten: Nguyen Thi Quynh Hoa
# MSSV: 1752017
# Ma bai tap: BTTH03
# ================================================
#" > BTTH/BTTH$l/1752018.sh
	((l++))
	done
done
cd BTTH
ls BTTH[1-9]
ls -l BTTH[1-9]/1752018.sh
cd ..
cd BTTL
ls BTTL[1-9]
ls -l BTTL[1-9]/1752018.sh