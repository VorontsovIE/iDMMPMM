set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on SRP_footprint.mfa (used 4 of 4), average length=39 (flank length=0), fixed length=28'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 2, '90%%' 3)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'SRP_on_footprint.png'
plot 'SRP_selex_on_SRP_footprint.mfa.p_value' using 2:1 with linespoints t 'SRP_selex.xml/srp','SRP_imm_on_SRP_footprint.mfa.p_value' using 2:1 with linespoints t 'SRP_imm.xml/srp'
