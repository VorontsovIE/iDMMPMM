set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on ANTP_footprint.mfa (used 12 of 12), average length=41 (flank length=0), fixed length=25'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 6, '90%%' 10)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'ANTP_on_footprint.png'
plot 'ANTP_b1h_on_ANTP_footprint.mfa.p_value' using 2:1 with linespoints t 'ANTP_b1h.xml/Antp','ANTP_imm_on_ANTP_footprint.mfa.p_value' using 2:1 with linespoints t 'ANTP_imm.xml/Antp'
