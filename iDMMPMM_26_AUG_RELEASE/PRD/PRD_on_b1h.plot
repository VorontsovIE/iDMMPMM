set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on PRD_b1h.mfa (used 37 of 37), average length=54 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 1
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 18, '90%%' 33)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'PRD_on_b1h.png'
plot 'PRD_footprint_on_PRD_b1h.mfa.p_value' using 2:1 with linespoints t 'PRD_footprint.xml/prd','PRD_peaks_on_PRD_b1h.mfa.p_value' using 2:1 with linespoints t 'PRD_peaks.xml/prd','PRD_imm_on_PRD_b1h.mfa.p_value' using 2:1 with linespoints t 'PRD_imm.xml/prd','PRD_except_b1h_on_PRD_b1h.mfa.p_value' using 2:1 with linespoints t 'PRD_except_b1h.xml/prd'
