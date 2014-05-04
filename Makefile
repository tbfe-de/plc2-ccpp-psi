all:\
	ccpp-training-psi.html\
	ccpp-slides-psi.html

ccpp-training-psi.html: ccpp-training-psi.md
	pandoc -N --toc ccpp-training-psi.md -o $@

ccpp-slides-psi.html: ccpp-training-psi.md
	pandoc -s -t slidy ccpp-training-psi.md -o $@
