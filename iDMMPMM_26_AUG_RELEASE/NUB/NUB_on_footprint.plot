set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on NUB_footprint.mfa (used 4 of 4), average length=41 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 2, '90%%' 3)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'NUB_on_footprint.png'
plot 'NUB_b1h_on_NUB_footprint.mfa.p_value' using 2:1 with linespoints t 'NUB_b1h.xml/nub','NUB_imm_on_NUB_footprint.mfa.p_value' using 2:1 with linespoints t 'NUB_imm.xml/nub'
