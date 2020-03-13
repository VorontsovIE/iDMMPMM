set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on CAD_peaks.mfa (used 100 of 100), average length=500 (flank length=0), fixed length=28'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 50, '90%%' 90)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'CAD_on_peaks.png'
plot 'CAD_b1h_on_CAD_peaks.mfa.p_value' using 2:1 with lines t 'CAD_b1h.xml/cad','CAD_footprint_on_CAD_peaks.mfa.p_value' using 2:1 with lines t 'CAD_footprint.xml/cad','CAD_imm_on_CAD_peaks.mfa.p_value' using 2:1 with lines t 'CAD_imm.xml/cad','CAD_except_peaks_on_CAD_peaks.mfa.p_value' using 2:1 with lines t 'CAD_except_peaks.xml/cad'
