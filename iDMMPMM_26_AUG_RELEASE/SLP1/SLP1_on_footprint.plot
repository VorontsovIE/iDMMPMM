set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on SLP1_footprint.mfa (used 1 of 1), average length=55 (flank length=0), fixed length=37'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 0, '90%%' 0)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'SLP1_on_footprint.png'
plot 'SLP1_b1h_on_SLP1_footprint.mfa.p_value' using 2:1 with linespoints t 'SLP1_b1h.xml/slp1','SLP1_peaks_on_SLP1_footprint.mfa.p_value' using 2:1 with linespoints t 'SLP1_peaks.xml/slp1','SLP1_imm_on_SLP1_footprint.mfa.p_value' using 2:1 with linespoints t 'SLP1_imm.xml/slp1','SLP1_except_footprint_on_SLP1_footprint.mfa.p_value' using 2:1 with linespoints t 'SLP1_except_footprint.xml/slp1'
