set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on Kr.mfa (used 400 of 400), average length=500 (flank length=0), fixed length=31'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 200, '90%%' 360)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'KR_control1.png'
plot 'KR_b1h_on_Kr.mfa.p_value' using 2:1 with lines t 'KR_b1h.xml/Kr','KR_footprint_on_Kr.mfa.p_value' using 2:1 with lines t 'KR_footprint.xml/Kr','KR_imm_on_Kr.mfa.p_value' using 2:1 with lines t 'KR_imm.xml/Kr'
