set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on KR_footprint.mfa (used 45 of 45), average length=29 (flank length=0), fixed length=31'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 22, '90%%' 40)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'KR_on_footprint.png'
plot 'KR_b1h_on_KR_footprint.mfa.p_value' using 2:1 with linespoints t 'KR_b1h.xml/Kr','KR_peaks_on_KR_footprint.mfa.p_value' using 2:1 with linespoints t 'KR_peaks.xml/Kr','KR_imm_on_KR_footprint.mfa.p_value' using 2:1 with linespoints t 'KR_imm.xml/Kr','KR_except_footprint_on_KR_footprint.mfa.p_value' using 2:1 with linespoints t 'KR_except_footprint.xml/Kr'
