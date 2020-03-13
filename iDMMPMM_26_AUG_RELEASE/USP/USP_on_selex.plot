set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on USP_selex.mfa (used 38 of 38), average length=45 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 19, '90%%' 34)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'USP_on_selex.png'
plot 'USP_footprint_on_USP_selex.mfa.p_value' using 2:1 with linespoints t 'USP_footprint.xml/usp','USP_imm_on_USP_selex.mfa.p_value' using 2:1 with linespoints t 'USP_imm.xml/usp'
