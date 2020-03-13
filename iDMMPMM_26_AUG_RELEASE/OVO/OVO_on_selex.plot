set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on OVO_selex.mfa (used 21 of 21), average length=59 (flank length=0), fixed length=37'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 10, '90%%' 18)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'OVO_on_selex.png'
plot 'OVO_footprint_on_OVO_selex.mfa.p_value' using 2:1 with linespoints t 'OVO_footprint.xml/ovo','OVO_imm_on_OVO_selex.mfa.p_value' using 2:1 with linespoints t 'OVO_imm.xml/ovo'
