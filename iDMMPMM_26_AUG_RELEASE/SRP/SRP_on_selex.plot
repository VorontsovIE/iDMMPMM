set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on SRP_selex.mfa (used 32 of 32), average length=52 (flank length=0), fixed length=28'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 16, '90%%' 28)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'SRP_on_selex.png'
plot 'SRP_footprint_on_SRP_selex.mfa.p_value' using 2:1 with linespoints t 'SRP_footprint.xml/srp','SRP_imm_on_SRP_selex.mfa.p_value' using 2:1 with linespoints t 'SRP_imm.xml/srp'
