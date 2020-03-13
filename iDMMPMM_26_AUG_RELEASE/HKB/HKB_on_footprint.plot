set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on HKB_footprint.mfa (used 2 of 2), average length=43 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 1, '90%%' 1)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'HKB_on_footprint.png'
plot 'HKB_b1h_on_HKB_footprint.mfa.p_value' using 2:1 with linespoints t 'HKB_b1h.xml/hkb','HKB_peaks_on_HKB_footprint.mfa.p_value' using 2:1 with linespoints t 'HKB_peaks.xml/hkb','HKB_imm_on_HKB_footprint.mfa.p_value' using 2:1 with linespoints t 'HKB_imm.xml/hkb','HKB_except_footprint_on_HKB_footprint.mfa.p_value' using 2:1 with linespoints t 'HKB_except_footprint.xml/hkb'
