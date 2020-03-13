set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on SNA_peaks.mfa (used 200 of 200), average length=500 (flank length=0), fixed length=31'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 100, '90%%' 180)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'SNA_on_peaks.png'
plot 'SNA_selex_on_SNA_peaks.mfa.p_value' using 2:1 with lines t 'SNA_selex.xml/sna','SNA_footprint_on_SNA_peaks.mfa.p_value' using 2:1 with lines t 'SNA_footprint.xml/sna','SNA_imm_on_SNA_peaks.mfa.p_value' using 2:1 with lines t 'SNA_imm.xml/sna','SNA_except_peaks_on_SNA_peaks.mfa.p_value' using 2:1 with lines t 'SNA_except_peaks.xml/sna'
