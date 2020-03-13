set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on DFD_b1h.mfa (used 24 of 24), average length=35 (flank length=0), fixed length=25'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 12, '90%%' 21)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'DFD_on_b1h.png'
plot 'DFD_footprint_on_DFD_b1h.mfa.p_value' using 2:1 with linespoints t 'DFD_footprint.xml/Dfd','DFD_imm_on_DFD_b1h.mfa.p_value' using 2:1 with linespoints t 'DFD_imm.xml/Dfd'
