#! /bin/bash
makeAMakefile() # 
filethucthi file .c
{
    excute=$1
    shift
    echo "all : $excute"
    echo "clean :"
    echo -e "\trm -f *.o $excute"
    echo -n "$excute :"
    for i in $*
    do
	temp=${i/".c"/".o"}
	echo -n " $temp"
    done
    echo -e -n "\n\tgcc"
    for i in $*
    do
	temp=${i/".c"/".o"}
	echo -n " $temp"
    done
    echo -n " -o $excute"
    echo -e "\n"
    for i in $*
    do
	temp=${i/".c"/".o"}
	echo -e "\n$temp : $i"
	echo -n -e "\tgcc -c $i"
    done
    echo -e "\ndepend:"
    echo -e "\tmakedepend *.c"
    echo "# DO NOT DELETE"
}

set "ex f1.c f2.c f3.c f4.c"
makeAMakefile $*