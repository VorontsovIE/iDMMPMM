set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on EIP74EF_selex.mfa (used 17 of 17), average length=43 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 8, '90%%' 15)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'EIP74EF_on_selex.png'
plot 'EIP74EF_footprint_on_EIP74EF_selex.mfa.p_value' using 2:1 with linespoints t 'EIP74EF_footprint.xml/Eip74EF','EIP74EF_imm_on_EIP74EF_selex.mfa.p_value' using 2:1 with linespoints t 'EIP74EF_imm.xml/Eip74EF'
