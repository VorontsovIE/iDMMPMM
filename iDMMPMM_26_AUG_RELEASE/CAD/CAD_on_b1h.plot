set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on CAD_b1h.mfa (used 43 of 43), average length=36 (flank length=0), fixed length=28'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 21, '90%%' 38)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'CAD_on_b1h.png'
plot 'CAD_footprint_on_CAD_b1h.mfa.p_value' using 2:1 with linespoints t 'CAD_footprint.xml/cad','CAD_peaks_on_CAD_b1h.mfa.p_value' using 2:1 with linespoints t 'CAD_peaks.xml/cad','CAD_imm_on_CAD_b1h.mfa.p_value' using 2:1 with linespoints t 'CAD_imm.xml/cad','CAD_except_b1h_on_CAD_b1h.mfa.p_value' using 2:1 with linespoints t 'CAD_except_b1h.xml/cad'
