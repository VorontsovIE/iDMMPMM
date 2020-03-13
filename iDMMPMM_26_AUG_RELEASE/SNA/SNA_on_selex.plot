set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on SNA_selex.mfa (used 40 of 40), average length=42 (flank length=0), fixed length=31'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 20, '90%%' 36)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'SNA_on_selex.png'
plot 'SNA_footprint_on_SNA_selex.mfa.p_value' using 2:1 with linespoints t 'SNA_footprint.xml/sna','SNA_peaks_on_SNA_selex.mfa.p_value' using 2:1 with linespoints t 'SNA_peaks.xml/sna','SNA_imm_on_SNA_selex.mfa.p_value' using 2:1 with linespoints t 'SNA_imm.xml/sna','SNA_except_selex_on_SNA_selex.mfa.p_value' using 2:1 with linespoints t 'SNA_except_selex.xml/sna'
