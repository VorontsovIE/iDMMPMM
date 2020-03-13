set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on EMS_footprint.mfa (used 3 of 3), average length=37 (flank length=0), fixed length=34'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 1, '90%%' 2)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'EMS_on_footprint.png'
plot 'EMS_b1h_on_EMS_footprint.mfa.p_value' using 2:1 with linespoints t 'EMS_b1h.xml/ems','EMS_imm_on_EMS_footprint.mfa.p_value' using 2:1 with linespoints t 'EMS_imm.xml/ems'
