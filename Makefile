# Makefile for ACIS SOPs

dpaa_on:
	make_sop_table dpaa_on.tsv
	latex dpaa_on.tex; latex dpaa_on.tex
	dvips dpaa_on.dvi -o dpaa_on.ps
	ps2pdf dpaa_on.ps

dpab_on:
	make_sop_table dpab_on.tsv
	latex dpab_on.tex; latex dpab_on.tex
	dvips dpab_on.dvi -o dpab_on.ps
	ps2pdf dpab_on.ps

dpaa_off:
	make_sop_table dpaa_off.tsv
	latex dpaa_off.tex; latex dpaa_off.tex
	dvips dpaa_off.dvi -o dpaa_off.ps
	ps2pdf dpaa_off.ps

dpab_off:
	make_sop_table dpab_off.tsv
	latex dpab_off.tex; latex dpab_off.tex
	dvips dpab_off.dvi -o dpab_off.ps
	ps2pdf dpab_off.ps

deaa_on:
	make_sop_table -l 24 deaa_on.tsv
	latex deaa_on.tex; latex deaa_on.tex
	dvips deaa_on.dvi -o deaa_on.ps
	ps2pdf deaa_on.ps

deaa_off:
	make_sop_table deaa_off.tsv
	latex deaa_off.tex; latex deaa_off.tex
	dvips deaa_off.dvi -o deaa_off.ps
	ps2pdf deaa_off.ps

deab_on:
	make_sop_table -l 24 deab_on.tsv
	latex deaa_on.tex; latex deaa_on.tex
	dvips deaa_on.dvi -o deaa_on.ps
	ps2pdf deaa_on.ps

deab_off:
	make_sop_table deab_off.tsv
	latex deab_off.tex; latex deab_off.tex
	dvips deab_off.dvi -o deab_off.ps
	ps2pdf deab_off.ps

deaa_on_test_vid:
	make_sop_table -p 1.8in -t 2.6in -d 2.17in -l 25,22,29,24,25 deaa_on_test_vid.tsv
	latex deaa_on_test_vid.tex; latex deaa_on_test_vid.tex 
	dvips -o deaa_on_test_vid.ps deaa_on_test_vid.dvi
	ps2pdf deaa_on_test_vid.ps

switch_deaa_b:
	make_sop_table -p 1.8in -t 2.6in -d 2.1in -l 29,29,29,27,25,29 switch_deaa_b.tsv
	latex switch_deaa_b.tex; latex switch_deaa_b.tex
	dvips switch_deaa_b.dvi -o switch_deaa_b.ps
	ps2pdf switch_deaa_b.ps

standby:
	make_sop_table standby.tsv
	latex standby.tex; latex standby.tex
	dvips standby.dvi -o standby.ps
	ps2pdf standby.ps

clean_all: clean_aux
	rm -f *.ps *.pdf

clean_aux:
	rm -f *.aux *.log *~ *.dvi *.tab *.fls *-eps-converted-to.pdf *.fdb_latexmk
