set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on TTK_footprint.mfa (used 8 of 8), average length=35 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 4, '90%%' 7)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'TTK_on_footprint.png'
plot 'TTK_b1h_on_TTK_footprint.mfa.p_value' using 2:1 with linespoints t 'TTK_b1h.xml/ttk','TTK_imm_on_TTK_footprint.mfa.p_value' using 2:1 with linespoints t 'TTK_imm.xml/ttk'
