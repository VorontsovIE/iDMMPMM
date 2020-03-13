set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on BRK_selex.mfa (used 12 of 12), average length=52 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 6, '90%%' 10)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'BRK_on_selex.png'
plot 'BRK_footprint_on_BRK_selex.mfa.p_value' using 2:1 with linespoints t 'BRK_footprint.xml/brk','BRK_imm_on_BRK_selex.mfa.p_value' using 2:1 with linespoints t 'BRK_imm.xml/brk'
