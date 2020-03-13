set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on Z_footprint.mfa (used 41 of 41), average length=24 (flank length=0), fixed length=28'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 20, '90%%' 36)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'Z_on_footprint.png'
plot 'Z_peaks_on_Z_footprint.mfa.p_value' using 2:1 with linespoints t 'Z_peaks.xml/z','Z_imm_on_Z_footprint.mfa.p_value' using 2:1 with linespoints t 'Z_imm.xml/z'
