set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on FTZ_footprint.mfa (used 66 of 66), average length=33 (flank length=0), fixed length=28'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 33, '90%%' 59)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'FTZ_on_footprint.png'
plot 'FTZ_selex_on_FTZ_footprint.mfa.p_value' using 2:1 with lines t 'FTZ_selex.xml/ftz','FTZ_b1h_on_FTZ_footprint.mfa.p_value' using 2:1 with lines t 'FTZ_b1h.xml/ftz','FTZ_peaks_on_FTZ_footprint.mfa.p_value' using 2:1 with lines t 'FTZ_peaks.xml/ftz','FTZ_imm_on_FTZ_footprint.mfa.p_value' using 2:1 with lines t 'FTZ_imm.xml/ftz','FTZ_except_footprint_on_FTZ_footprint.mfa.p_value' using 2:1 with lines t 'FTZ_except_footprint.xml/ftz'
