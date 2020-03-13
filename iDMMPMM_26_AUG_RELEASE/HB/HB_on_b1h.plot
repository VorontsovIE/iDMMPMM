set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on HB_b1h.mfa (used 34 of 34), average length=53 (flank length=0), fixed length=28'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 17, '90%%' 30)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'HB_on_b1h.png'
plot 'HB_footprint_on_HB_b1h.mfa.p_value' using 2:1 with linespoints t 'HB_footprint.xml/hb','HB_peaks_on_HB_b1h.mfa.p_value' using 2:1 with linespoints t 'HB_peaks.xml/hb','HB_imm_on_HB_b1h.mfa.p_value' using 2:1 with linespoints t 'HB_imm.xml/hb','HB_except_b1h_on_HB_b1h.mfa.p_value' using 2:1 with linespoints t 'HB_except_b1h.xml/hb'
