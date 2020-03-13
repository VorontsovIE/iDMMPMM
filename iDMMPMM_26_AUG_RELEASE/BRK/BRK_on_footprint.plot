set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on BRK_footprint.mfa (used 10 of 10), average length=38 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 5, '90%%' 9)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'BRK_on_footprint.png'
plot 'BRK_selex_on_BRK_footprint.mfa.p_value' using 2:1 with linespoints t 'BRK_selex.xml/brk','BRK_imm_on_BRK_footprint.mfa.p_value' using 2:1 with linespoints t 'BRK_imm.xml/brk'
