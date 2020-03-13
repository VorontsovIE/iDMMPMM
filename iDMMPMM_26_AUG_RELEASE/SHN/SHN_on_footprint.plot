set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on SHN_footprint.mfa (used 2 of 2), average length=50 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 1, '90%%' 1)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'SHN_on_footprint.png'
plot 'SHN_peaks_on_SHN_footprint.mfa.p_value' using 2:1 with linespoints t 'SHN_peaks.xml/shn','SHN_imm_on_SHN_footprint.mfa.p_value' using 2:1 with linespoints t 'SHN_imm.xml/shn'
