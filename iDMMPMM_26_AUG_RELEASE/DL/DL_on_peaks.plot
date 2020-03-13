set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on DL_peaks.mfa (used 100 of 100), average length=500 (flank length=0), fixed length=37'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 50, '90%%' 90)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'DL_on_peaks.png'
plot 'DL_selex_on_DL_peaks.mfa.p_value' using 2:1 with lines t 'DL_selex.xml/dl','DL_b1h_on_DL_peaks.mfa.p_value' using 2:1 with lines t 'DL_b1h.xml/dl','DL_footprint_on_DL_peaks.mfa.p_value' using 2:1 with lines t 'DL_footprint.xml/dl','DL_imm_on_DL_peaks.mfa.p_value' using 2:1 with lines t 'DL_imm.xml/dl','DL_except_peaks_on_DL_peaks.mfa.p_value' using 2:1 with lines t 'DL_except_peaks.xml/dl'
