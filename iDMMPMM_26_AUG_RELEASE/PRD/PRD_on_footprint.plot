set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on PRD_footprint.mfa (used 11 of 11), average length=47 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 5, '90%%' 9)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'PRD_on_footprint.png'
plot 'PRD_b1h_on_PRD_footprint.mfa.p_value' using 2:1 with linespoints t 'PRD_b1h.xml/prd','PRD_peaks_on_PRD_footprint.mfa.p_value' using 2:1 with linespoints t 'PRD_peaks.xml/prd','PRD_imm_on_PRD_footprint.mfa.p_value' using 2:1 with linespoints t 'PRD_imm.xml/prd','PRD_except_footprint_on_PRD_footprint.mfa.p_value' using 2:1 with linespoints t 'PRD_except_footprint.xml/prd'
