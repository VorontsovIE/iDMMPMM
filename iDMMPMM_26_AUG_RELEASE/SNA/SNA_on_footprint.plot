set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on SNA_footprint.mfa (used 11 of 11), average length=36 (flank length=0), fixed length=31'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 5, '90%%' 9)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'SNA_on_footprint.png'
plot 'SNA_selex_on_SNA_footprint.mfa.p_value' using 2:1 with linespoints t 'SNA_selex.xml/sna','SNA_peaks_on_SNA_footprint.mfa.p_value' using 2:1 with linespoints t 'SNA_peaks.xml/sna','SNA_imm_on_SNA_footprint.mfa.p_value' using 2:1 with linespoints t 'SNA_imm.xml/sna','SNA_except_footprint_on_SNA_footprint.mfa.p_value' using 2:1 with linespoints t 'SNA_except_footprint.xml/sna'
