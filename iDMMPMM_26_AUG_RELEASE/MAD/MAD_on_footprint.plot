set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on MAD_footprint.mfa (used 19 of 19), average length=32 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 9, '90%%' 17)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'MAD_on_footprint.png'
plot 'MAD_peaks_on_MAD_footprint.mfa.p_value' using 2:1 with linespoints t 'MAD_peaks.xml/Mad','MAD_imm_on_MAD_footprint.mfa.p_value' using 2:1 with linespoints t 'MAD_imm.xml/Mad'
