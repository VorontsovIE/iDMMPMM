set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on ABD_A_footprint.mfa (used 41 of 41), average length=25 (flank length=0), fixed length=31'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 20, '90%%' 36)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'ABD_A_on_footprint.png'
plot 'ABD_A_b1h_on_ABD_A_footprint.mfa.p_value' using 2:1 with linespoints t 'ABD_A_b1h.xml/abd-A','ABD_A_imm_on_ABD_A_footprint.mfa.p_value' using 2:1 with linespoints t 'ABD_A_imm.xml/abd-A'
