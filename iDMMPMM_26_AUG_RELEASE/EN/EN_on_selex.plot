set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on EN_selex.mfa (used 112 of 112), average length=34 (flank length=0), fixed length=22'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 56, '90%%' 100)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'EN_on_selex.png'
plot 'EN_b1h_on_EN_selex.mfa.p_value' using 2:1 with lines t 'EN_b1h.xml/en','EN_footprint_on_EN_selex.mfa.p_value' using 2:1 with lines t 'EN_footprint.xml/en','EN_imm_on_EN_selex.mfa.p_value' using 2:1 with lines t 'EN_imm.xml/en','EN_except_selex_on_EN_selex.mfa.p_value' using 2:1 with lines t 'EN_except_selex.xml/en'
