set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on KNI_footprint.mfa (used 33 of 33), average length=26 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 16, '90%%' 29)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'KNI_on_footprint.png'
plot 'KNI_b1h_on_KNI_footprint.mfa.p_value' using 2:1 with linespoints t 'KNI_b1h.xml/kni','KNI_peaks_on_KNI_footprint.mfa.p_value' using 2:1 with linespoints t 'KNI_peaks.xml/kni','KNI_imm_on_KNI_footprint.mfa.p_value' using 2:1 with linespoints t 'KNI_imm.xml/kni','KNI_except_footprint_on_KNI_footprint.mfa.p_value' using 2:1 with linespoints t 'KNI_except_footprint.xml/kni'
