set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on FTZ_selex.mfa (used 21 of 21), average length=39 (flank length=0), fixed length=28'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 10, '90%%' 18)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'FTZ_on_selex.png'
plot 'FTZ_b1h_on_FTZ_selex.mfa.p_value' using 2:1 with linespoints t 'FTZ_b1h.xml/ftz','FTZ_footprint_on_FTZ_selex.mfa.p_value' using 2:1 with linespoints t 'FTZ_footprint.xml/ftz','FTZ_peaks_on_FTZ_selex.mfa.p_value' using 2:1 with linespoints t 'FTZ_peaks.xml/ftz','FTZ_imm_on_FTZ_selex.mfa.p_value' using 2:1 with linespoints t 'FTZ_imm.xml/ftz','FTZ_except_selex_on_FTZ_selex.mfa.p_value' using 2:1 with linespoints t 'FTZ_except_selex.xml/ftz'
