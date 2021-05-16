#!/bin/sh

gitpush(){
    git add ./*
    git commit -m "$1" .
    git push origin master
}

msg="$1"
if [ "$msg" = "" ];then
    msg="Save daily."
fi

traverse(){
	for d in `ls`
	do
	    if [ -d $d/.git ]; then
	        cd $d
	        echo $d
	        gitpush "$msg"
	        cd ..
	    fi
	done
}

cd ~/code
traverse
