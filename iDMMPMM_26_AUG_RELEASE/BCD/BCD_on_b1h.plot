set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on BCD_b1h.mfa (used 22 of 22), average length=36 (flank length=0), fixed length=22'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 11, '90%%' 19)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'BCD_on_b1h.png'
plot 'BCD_selex_on_BCD_b1h.mfa.p_value' using 2:1 with linespoints t 'BCD_selex.xml/bcd','BCD_footprint_on_BCD_b1h.mfa.p_value' using 2:1 with linespoints t 'BCD_footprint.xml/bcd','BCD_peaks_on_BCD_b1h.mfa.p_value' using 2:1 with linespoints t 'BCD_peaks.xml/bcd','BCD_imm_on_BCD_b1h.mfa.p_value' using 2:1 with linespoints t 'BCD_imm.xml/bcd','BCD_except_b1h_on_BCD_b1h.mfa.p_value' using 2:1 with linespoints t 'BCD_except_b1h.xml/bcd'
