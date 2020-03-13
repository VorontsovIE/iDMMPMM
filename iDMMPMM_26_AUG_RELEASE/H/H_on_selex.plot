set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on H_selex.mfa (used 26 of 26), average length=39 (flank length=0), fixed length=31'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 13, '90%%' 23)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'H_on_selex.png'
plot 'H_b1h_on_H_selex.mfa.p_value' using 2:1 with linespoints t 'H_b1h.xml/h','H_peaks_on_H_selex.mfa.p_value' using 2:1 with linespoints t 'H_peaks.xml/h','H_imm_on_H_selex.mfa.p_value' using 2:1 with linespoints t 'H_imm.xml/h','H_except_selex_on_H_selex.mfa.p_value' using 2:1 with linespoints t 'H_except_selex.xml/h'
