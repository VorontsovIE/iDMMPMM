set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on KR_b1h.mfa (used 34 of 34), average length=54 (flank length=0), fixed length=31'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 17, '90%%' 30)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'KR_on_b1h.png'
plot 'KR_footprint_on_KR_b1h.mfa.p_value' using 2:1 with linespoints t 'KR_footprint.xml/Kr','KR_peaks_on_KR_b1h.mfa.p_value' using 2:1 with linespoints t 'KR_peaks.xml/Kr','KR_imm_on_KR_b1h.mfa.p_value' using 2:1 with linespoints t 'KR_imm.xml/Kr','KR_except_b1h_on_KR_b1h.mfa.p_value' using 2:1 with linespoints t 'KR_except_b1h.xml/Kr'
