set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on EN_footprint.mfa (used 56 of 56), average length=36 (flank length=0), fixed length=22'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 28, '90%%' 50)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'EN_on_footprint.png'
plot 'EN_selex_on_EN_footprint.mfa.p_value' using 2:1 with lines t 'EN_selex.xml/en','EN_b1h_on_EN_footprint.mfa.p_value' using 2:1 with lines t 'EN_b1h.xml/en','EN_imm_on_EN_footprint.mfa.p_value' using 2:1 with lines t 'EN_imm.xml/en','EN_except_footprint_on_EN_footprint.mfa.p_value' using 2:1 with lines t 'EN_except_footprint.xml/en'
