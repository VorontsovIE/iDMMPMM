set terminal png small font Arial 9 size 1024, 768
set title 'PWM ROC curves based on prd.mfa (used 600 of 600), average length=500 (flank length=0), fixed length=40'
set key left
set grid
set logscale x
set format x '%g'
set ytics 5
set ylabel "number of sequences,\n containing at least one site scoring above the threshold"
set xlabel 'P-value'
set y2tics ('50%%' 300, '90%%' 540)
set y2label "percentage of sequences,\n containing at least one site scoring above the threshold"
set output 'PRD_control1.png'
plot 'PRD_b1h_on_prd.mfa.p_value' using 2:1 with lines t 'PRD_b1h.xml/prd','PRD_footprint_on_prd.mfa.p_value' using 2:1 with lines t 'PRD_footprint.xml/prd','PRD_imm_on_prd.mfa.p_value' using 2:1 with lines t 'PRD_imm.xml/prd'
