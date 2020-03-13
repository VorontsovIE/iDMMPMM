set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on EVE_footprint.mfa (used 20 of 20), average length=46 (flank length=0), fixed length=28'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 10, '90%%' 18)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'EVE_on_footprint.png'
plot 'EVE_b1h_on_EVE_footprint.mfa.p_value' using 2:1 with linespoints t 'EVE_b1h.xml/eve','EVE_imm_on_EVE_footprint.mfa.p_value' using 2:1 with linespoints t 'EVE_imm.xml/eve'
