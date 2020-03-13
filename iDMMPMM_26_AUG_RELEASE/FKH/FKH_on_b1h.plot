set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on FKH_b1h.mfa (used 36 of 36), average length=54 (flank length=0), fixed length=34'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 18, '90%%' 32)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'FKH_on_b1h.png'
plot 'FKH_footprint_on_FKH_b1h.mfa.p_value' using 2:1 with linespoints t 'FKH_footprint.xml/fkh','FKH_imm_on_FKH_b1h.mfa.p_value' using 2:1 with linespoints t 'FKH_imm.xml/fkh'
