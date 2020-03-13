set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on USP_footprint.mfa (used 1 of 1), average length=52 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 0, '90%%' 0)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'USP_on_footprint.png'
plot 'USP_selex_on_USP_footprint.mfa.p_value' using 2:1 with linespoints t 'USP_selex.xml/usp','USP_imm_on_USP_footprint.mfa.p_value' using 2:1 with linespoints t 'USP_imm.xml/usp'
