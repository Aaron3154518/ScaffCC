if [ "$#" -ne 4 ]; then
	echo "Usage: \$sh pass.sh so_name pass_name input_file output_file"
    echo "\tso_name: Name of .so file in build/lib/"
    echo "\tpass_name: Name of LLVM pass to run"
    echo "\tinput_file: File to run the pass on. *.ll"
    echo "\toutput_file: File to write the result to. *.ll"
	exit 1
fi
echo ".so Name: $1"
echo "Pass Name: $2"
echo "Input File: $3"
echo "Output File: $4"
echo "../build/bin/opt -S -load ../build/lib/$1 -$2 $3 > $4 2> out.txt"
../build/bin/opt -S -load ../build/lib/$1 -$2 $3 > $4 2> out.txt
cat out.txt
