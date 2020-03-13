set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on VND_selex.mfa (used 87 of 87), average length=43 (flank length=0), fixed length=31'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 43, '90%%' 78)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'VND_on_selex.png'
plot 'VND_footprint_on_VND_selex.mfa.p_value' using 2:1 with lines t 'VND_footprint.xml/vnd','VND_imm_on_VND_selex.mfa.p_value' using 2:1 with lines t 'VND_imm.xml/vnd'
