set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on ANTP_b1h.mfa (used 19 of 19), average length=36 (flank length=0), fixed length=25'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 9, '90%%' 17)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'ANTP_on_b1h.png'
plot 'ANTP_footprint_on_ANTP_b1h.mfa.p_value' using 2:1 with linespoints t 'ANTP_footprint.xml/Antp','ANTP_imm_on_ANTP_b1h.mfa.p_value' using 2:1 with linespoints t 'ANTP_imm.xml/Antp'
