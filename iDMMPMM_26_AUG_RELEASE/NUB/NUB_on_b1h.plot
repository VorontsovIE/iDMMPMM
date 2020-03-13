set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on NUB_b1h.mfa (used 32 of 32), average length=53 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 16, '90%%' 28)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'NUB_on_b1h.png'
plot 'NUB_footprint_on_NUB_b1h.mfa.p_value' using 2:1 with linespoints t 'NUB_footprint.xml/nub','NUB_imm_on_NUB_b1h.mfa.p_value' using 2:1 with linespoints t 'NUB_imm.xml/nub'
