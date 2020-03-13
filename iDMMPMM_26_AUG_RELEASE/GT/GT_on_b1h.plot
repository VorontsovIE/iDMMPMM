set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on GT_b1h.mfa (used 35 of 35), average length=53 (flank length=0), fixed length=34'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 17, '90%%' 31)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'GT_on_b1h.png'
plot 'GT_footprint_on_GT_b1h.mfa.p_value' using 2:1 with linespoints t 'GT_footprint.xml/gt','GT_peaks_on_GT_b1h.mfa.p_value' using 2:1 with linespoints t 'GT_peaks.xml/gt','GT_imm_on_GT_b1h.mfa.p_value' using 2:1 with linespoints t 'GT_imm.xml/gt','GT_except_b1h_on_GT_b1h.mfa.p_value' using 2:1 with linespoints t 'GT_except_b1h.xml/gt'
