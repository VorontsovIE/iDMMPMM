set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on hb.mfa (used 400 of 400), average length=500 (flank length=0), fixed length=28'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 200, '90%%' 360)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'HB_control1.png'
plot 'HB_b1h_on_hb.mfa.p_value' using 2:1 with lines t 'HB_b1h.xml/hb','HB_footprint_on_hb.mfa.p_value' using 2:1 with lines t 'HB_footprint.xml/hb','HB_imm_on_hb.mfa.p_value' using 2:1 with lines t 'HB_imm.xml/hb'
