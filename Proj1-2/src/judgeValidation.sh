function run()
{
    echo "Judging test 6."
    ./sim_cache 32 2048 4 0 4096 8 ../traces/gcc_trace.txt > ../Results/Val_test6.txt
    diff -iw ../Results/Val_test6.txt ../validation/Validation6_PartB.txt

    echo "Judging test 7."
    ./sim_cache 16 1024 8 0 8192 4 ../traces/go_trace.txt > ../Results/Val_test7.txt
    diff -iw ../Results/Val_test7.txt ../validation/Validation7_PartB.txt

    echo "Judging test 8."
    ./sim_cache 32 1024 8 256 0 0 ../traces/perl_trace.txt > ../Results/Val_test8.txt
    diff -iw ../Results/Val_test8.txt ../validation/Validation8_PartB.txt

    echo "Judging test 9."
    ./sim_cache 128 1024 2 1024 4096 4 ../traces/gcc_trace.txt > ../Results/Val_test9.txt
    diff -iw ../Results/Val_test9.txt ../validation/Validation9_PartB.txt

    echo "Judging test 10."
    ./sim_cache 64 8192 2 1024 16384 4 ../traces/perl_trace.txt > ../Results/Val_test10.txt
    diff -iw ../Results/Val_test10.txt ../validation/Validation10_PartB.txt
}

make clean
make
mkdir -p ../Results
run 
echo "Finish all."
exit 0
