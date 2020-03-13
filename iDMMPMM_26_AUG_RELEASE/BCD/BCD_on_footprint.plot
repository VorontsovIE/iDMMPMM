set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on BCD_footprint.mfa (used 48 of 48), average length=24 (flank length=0), fixed length=22'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 24, '90%%' 43)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'BCD_on_footprint.png'
plot 'BCD_selex_on_BCD_footprint.mfa.p_value' using 2:1 with linespoints t 'BCD_selex.xml/bcd','BCD_b1h_on_BCD_footprint.mfa.p_value' using 2:1 with linespoints t 'BCD_b1h.xml/bcd','BCD_peaks_on_BCD_footprint.mfa.p_value' using 2:1 with linespoints t 'BCD_peaks.xml/bcd','BCD_imm_on_BCD_footprint.mfa.p_value' using 2:1 with linespoints t 'BCD_imm.xml/bcd','BCD_except_footprint_on_BCD_footprint.mfa.p_value' using 2:1 with linespoints t 'BCD_except_footprint.xml/bcd'
