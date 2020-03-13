set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on CAD_footprint.mfa (used 13 of 13), average length=28 (flank length=0), fixed length=28'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 6, '90%%' 11)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'CAD_on_footprint.png'
plot 'CAD_b1h_on_CAD_footprint.mfa.p_value' using 2:1 with linespoints t 'CAD_b1h.xml/cad','CAD_peaks_on_CAD_footprint.mfa.p_value' using 2:1 with linespoints t 'CAD_peaks.xml/cad','CAD_imm_on_CAD_footprint.mfa.p_value' using 2:1 with linespoints t 'CAD_imm.xml/cad','CAD_except_footprint_on_CAD_footprint.mfa.p_value' using 2:1 with linespoints t 'CAD_except_footprint.xml/cad'
