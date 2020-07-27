function usage { 
	echo $'\nUsage: ./build.sh -f [filename]\n'
	echo $' -f	The filename of the source file to be compiled without the file extension.\n'
}

if [ $# -lt 1 ]; then
	echo "No input files specified!"
	usage
	exit 1
fi

while [ $# -gt 0 ]; do
	case "$1" in
		-f)
			shift
			FILE=$1
			shift
			;;
		*)
			echo "Please use -f to specify the input file!"
			usage
			exit 1
			;;
	esac
done

if [ ! -f $FILE.s ]; then
	echo "$FILE.s doesn't exist!"
	usage
	exit 1
fi

gcc -m32 $FILE.s -o $FILE
./$FILE
echo $?
