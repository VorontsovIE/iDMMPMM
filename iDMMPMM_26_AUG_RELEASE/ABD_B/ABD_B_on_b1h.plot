set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on ABD_B_b1h.mfa (used 21 of 21), average length=35 (flank length=0), fixed length=31'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 10, '90%%' 18)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'ABD_B_on_b1h.png'
plot 'ABD_B_footprint_on_ABD_B_b1h.mfa.p_value' using 2:1 with linespoints t 'ABD_B_footprint.xml/Abd-B','ABD_B_imm_on_ABD_B_b1h.mfa.p_value' using 2:1 with linespoints t 'ABD_B_imm.xml/Abd-B'
