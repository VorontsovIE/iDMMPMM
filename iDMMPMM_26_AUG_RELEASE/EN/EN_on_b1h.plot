set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on EN_b1h.mfa (used 23 of 23), average length=35 (flank length=0), fixed length=22'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 11, '90%%' 20)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'EN_on_b1h.png'
plot 'EN_selex_on_EN_b1h.mfa.p_value' using 2:1 with linespoints t 'EN_selex.xml/en','EN_footprint_on_EN_b1h.mfa.p_value' using 2:1 with linespoints t 'EN_footprint.xml/en','EN_imm_on_EN_b1h.mfa.p_value' using 2:1 with linespoints t 'EN_imm.xml/en','EN_except_b1h_on_EN_b1h.mfa.p_value' using 2:1 with linespoints t 'EN_except_b1h.xml/en'
