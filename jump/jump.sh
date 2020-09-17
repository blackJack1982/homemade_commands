

jump(){ if [ -z "$1" ] ; then
		echo "empty"
	else

	dirr=$(locate -i "$1" | wc -l)
	dir=$(locate -i "$1" |fzy )
	cd $dir
	echo $dirr

	if [ -d "$dir" ] ; then
        	cd "$dir"
	else

#Navigate to a file


    	if [ -f "$dir" ]; then
		dir=$(dirname "$dir")
		cd "$dir"
	fi
	fi
	fi	}
