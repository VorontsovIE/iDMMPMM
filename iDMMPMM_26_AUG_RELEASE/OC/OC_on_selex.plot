set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on OC_selex.mfa (used 27 of 27), average length=39 (flank length=0), fixed length=22'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 13, '90%%' 24)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'OC_on_selex.png'
plot 'OC_b1h_on_OC_selex.mfa.p_value' using 2:1 with linespoints t 'OC_b1h.xml/oc','OC_imm_on_OC_selex.mfa.p_value' using 2:1 with linespoints t 'OC_imm.xml/oc'
