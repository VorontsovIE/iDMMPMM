set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on DFD_footprint.mfa (used 16 of 16), average length=25 (flank length=0), fixed length=25'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 8, '90%%' 14)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'DFD_on_footprint.png'
plot 'DFD_b1h_on_DFD_footprint.mfa.p_value' using 2:1 with linespoints t 'DFD_b1h.xml/Dfd','DFD_imm_on_DFD_footprint.mfa.p_value' using 2:1 with linespoints t 'DFD_imm.xml/Dfd'
