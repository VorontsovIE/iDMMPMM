set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on DL_b1h.mfa (used 35 of 35), average length=44 (flank length=0), fixed length=37'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 17, '90%%' 31)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'DL_on_b1h.png'
plot 'DL_selex_on_DL_b1h.mfa.p_value' using 2:1 with linespoints t 'DL_selex.xml/dl','DL_footprint_on_DL_b1h.mfa.p_value' using 2:1 with linespoints t 'DL_footprint.xml/dl','DL_peaks_on_DL_b1h.mfa.p_value' using 2:1 with linespoints t 'DL_peaks.xml/dl','DL_imm_on_DL_b1h.mfa.p_value' using 2:1 with linespoints t 'DL_imm.xml/dl','DL_except_b1h_on_DL_b1h.mfa.p_value' using 2:1 with linespoints t 'DL_except_b1h.xml/dl'
