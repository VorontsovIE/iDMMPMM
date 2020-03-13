set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on shn.mfa (used 221 of 221), average length=500 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 110, '90%%' 198)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'SHN_control1.png'
plot 'SHN_footprint_on_shn.mfa.p_value' using 2:1 with lines t 'SHN_footprint.xml/shn','SHN_imm_on_shn.mfa.p_value' using 2:1 with lines t 'SHN_imm.xml/shn'
