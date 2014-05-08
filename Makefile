all:\
	ccpp-training-psi.html\
	ccpp-slides-psi.html

ccpp-training-psi.html: ccpp-training-psi.md
	pandoc -s -N --toc -t html5 ccpp-training-psi.md -o $@

ccpp-slides-psi.html: ccpp-training-psi.md
	pandoc --standalone -s -t slidy ccpp-training-psi.md -o $@
