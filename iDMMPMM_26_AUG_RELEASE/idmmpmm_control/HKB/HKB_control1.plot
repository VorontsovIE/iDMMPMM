set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on hkb.mfa (used 600 of 600), average length=500 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 300, '90%%' 540)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'HKB_control1.png'
plot 'HKB_b1h_on_hkb.mfa.p_value' using 2:1 with lines t 'HKB_b1h.xml/hkb','HKB_footprint_on_hkb.mfa.p_value' using 2:1 with lines t 'HKB_footprint.xml/hkb','HKB_imm_on_hkb.mfa.p_value' using 2:1 with lines t 'HKB_imm.xml/hkb'
