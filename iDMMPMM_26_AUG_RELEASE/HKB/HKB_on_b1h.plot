set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on HKB_b1h.mfa (used 39 of 39), average length=54 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 19, '90%%' 35)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'HKB_on_b1h.png'
plot 'HKB_footprint_on_HKB_b1h.mfa.p_value' using 2:1 with linespoints t 'HKB_footprint.xml/hkb','HKB_peaks_on_HKB_b1h.mfa.p_value' using 2:1 with linespoints t 'HKB_peaks.xml/hkb','HKB_imm_on_HKB_b1h.mfa.p_value' using 2:1 with linespoints t 'HKB_imm.xml/hkb','HKB_except_b1h_on_HKB_b1h.mfa.p_value' using 2:1 with linespoints t 'HKB_except_b1h.xml/hkb'
