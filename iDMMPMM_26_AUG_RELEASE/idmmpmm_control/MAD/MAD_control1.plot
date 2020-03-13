set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on Mad.mfa (used 104 of 104), average length=500 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 52, '90%%' 93)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'MAD_control1.png'
plot 'MAD_footprint_on_Mad.mfa.p_value' using 2:1 with lines t 'MAD_footprint.xml/Mad','MAD_imm_on_Mad.mfa.p_value' using 2:1 with lines t 'MAD_imm.xml/Mad'
