set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on UBX_footprint.mfa (used 60 of 60), average length=29 (flank length=0), fixed length=22'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 30, '90%%' 54)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'UBX_on_footprint.png'
plot 'UBX_selex_on_UBX_footprint.mfa.p_value' using 2:1 with lines t 'UBX_selex.xml/Ubx','UBX_b1h_on_UBX_footprint.mfa.p_value' using 2:1 with lines t 'UBX_b1h.xml/Ubx','UBX_imm_on_UBX_footprint.mfa.p_value' using 2:1 with lines t 'UBX_imm.xml/Ubx','UBX_except_footprint_on_UBX_footprint.mfa.p_value' using 2:1 with lines t 'UBX_except_footprint.xml/Ubx'
