set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on SLP1_b1h.mfa (used 42 of 42), average length=54 (flank length=0), fixed length=37'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 21, '90%%' 37)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'SLP1_on_b1h.png'
plot 'SLP1_footprint_on_SLP1_b1h.mfa.p_value' using 2:1 with linespoints t 'SLP1_footprint.xml/slp1','SLP1_peaks_on_SLP1_b1h.mfa.p_value' using 2:1 with linespoints t 'SLP1_peaks.xml/slp1','SLP1_imm_on_SLP1_b1h.mfa.p_value' using 2:1 with linespoints t 'SLP1_imm.xml/slp1','SLP1_except_b1h_on_SLP1_b1h.mfa.p_value' using 2:1 with linespoints t 'SLP1_except_b1h.xml/slp1'
