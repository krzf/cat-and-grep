filename=Makefile;
echo ----------------------------------------------*CAT 1
diff <(cat -b test_files/test_6_cat.txt) <(./Mycat -b test_files/test_6_cat.txt) -s
echo ----------------------------------------------*CAT 2
diff <(cat -e "test_files/test_2_cat.txt") <(./Mycat -e "test_files/test_2_cat.txt") -s
echo ----------------------------------------------*CAT 3
diff <(cat -n "test_files/test_3_cat.txt") <(./Mycat -n "test_files/test_3_cat.txt") -s
echo ----------------------------------------------*CAT 4
diff <(cat "test_files/test_4_cat.txt" -n) <(./Mycat "test_files/test_4_cat.txt" -n) -s
# echo ----------------------------------------------*CAT 4
# diff <(cat "test_files/test_4_cat.txt" -n) <(./Mycat "test_files/test_4_cat.txt" -n) -s
echo ----------------------------------------------*CAT 5
diff <(cat -s "test_files/test_5_cat.txt") <(./Mycat -s "test_files/test_5_cat.txt") -s
echo ----------------------------------------------*CAT 6
diff <(cat -t "test_files/test_6_cat.txt") <(./Mycat -t "test_files/test_6_cat.txt") -s

