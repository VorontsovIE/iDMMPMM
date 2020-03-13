set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on FKH_footprint.mfa (used 1 of 1), average length=64 (flank length=0), fixed length=34'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 0, '90%%' 0)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'FKH_on_footprint.png'
plot 'FKH_b1h_on_FKH_footprint.mfa.p_value' using 2:1 with linespoints t 'FKH_b1h.xml/fkh','FKH_imm_on_FKH_footprint.mfa.p_value' using 2:1 with linespoints t 'FKH_imm.xml/fkh'
