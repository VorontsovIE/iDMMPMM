set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on TWI_footprint.mfa (used 15 of 15), average length=27 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 7, '90%%' 13)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'TWI_on_footprint.png'
plot 'TWI_peaks_on_TWI_footprint.mfa.p_value' using 2:1 with linespoints t 'TWI_peaks.xml/twi','TWI_imm_on_TWI_footprint.mfa.p_value' using 2:1 with linespoints t 'TWI_imm.xml/twi'
