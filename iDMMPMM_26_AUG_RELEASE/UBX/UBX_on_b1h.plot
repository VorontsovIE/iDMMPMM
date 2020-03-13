set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on UBX_b1h.mfa (used 20 of 20), average length=35 (flank length=0), fixed length=22'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 10, '90%%' 18)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'UBX_on_b1h.png'
plot 'UBX_selex_on_UBX_b1h.mfa.p_value' using 2:1 with linespoints t 'UBX_selex.xml/Ubx','UBX_footprint_on_UBX_b1h.mfa.p_value' using 2:1 with linespoints t 'UBX_footprint.xml/Ubx','UBX_imm_on_UBX_b1h.mfa.p_value' using 2:1 with linespoints t 'UBX_imm.xml/Ubx','UBX_except_b1h_on_UBX_b1h.mfa.p_value' using 2:1 with linespoints t 'UBX_except_b1h.xml/Ubx'
