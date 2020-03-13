set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on ABD_B_footprint.mfa (used 7 of 7), average length=28 (flank length=0), fixed length=31'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 3, '90%%' 6)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'ABD_B_on_footprint.png'
plot 'ABD_B_b1h_on_ABD_B_footprint.mfa.p_value' using 2:1 with linespoints t 'ABD_B_b1h.xml/Abd-B','ABD_B_imm_on_ABD_B_footprint.mfa.p_value' using 2:1 with linespoints t 'ABD_B_imm.xml/Abd-B'
