# a.pdf: trofftut.roff; groff -etkTpdf $< > $@
# a memo
# a.pdf: trofftut.mm; groff -mm -etkTpdf $< > $@
# a.pdf: trofftut.ms; groff -etkTpdf $< > $@

../r.pdf: raw.roff; groff -me -etkTpdf $< > $@

