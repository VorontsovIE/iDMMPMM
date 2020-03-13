set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on H_peaks.mfa (used 200 of 200), average length=500 (flank length=0), fixed length=31'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 100, '90%%' 180)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'H_on_peaks.png'
plot 'H_selex_on_H_peaks.mfa.p_value' using 2:1 with lines t 'H_selex.xml/h','H_b1h_on_H_peaks.mfa.p_value' using 2:1 with lines t 'H_b1h.xml/h','H_imm_on_H_peaks.mfa.p_value' using 2:1 with lines t 'H_imm.xml/h','H_except_peaks_on_H_peaks.mfa.p_value' using 2:1 with lines t 'H_except_peaks.xml/h'
