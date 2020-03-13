set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on TLL_footprint.mfa (used 37 of 37), average length=27 (flank length=0), fixed length=37'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 18, '90%%' 33)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'TLL_on_footprint.png'
plot 'TLL_b1h_on_TLL_footprint.mfa.p_value' using 2:1 with linespoints t 'TLL_b1h.xml/tll','TLL_peaks_on_TLL_footprint.mfa.p_value' using 2:1 with linespoints t 'TLL_peaks.xml/tll','TLL_imm_on_TLL_footprint.mfa.p_value' using 2:1 with linespoints t 'TLL_imm.xml/tll','TLL_except_footprint_on_TLL_footprint.mfa.p_value' using 2:1 with linespoints t 'TLL_except_footprint.xml/tll'
