set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on dl.mfa (used 200 of 200), average length=500 (flank length=0), fixed length=37'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 100, '90%%' 180)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'DL_control1.png'
plot 'DL_selex_on_dl.mfa.p_value' using 2:1 with lines t 'DL_selex.xml/dl','DL_b1h_on_dl.mfa.p_value' using 2:1 with lines t 'DL_b1h.xml/dl','DL_footprint_on_dl.mfa.p_value' using 2:1 with lines t 'DL_footprint.xml/dl','DL_imm_on_dl.mfa.p_value' using 2:1 with lines t 'DL_imm.xml/dl'
