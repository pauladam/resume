# TODO Add support for embedded images
export PATH := /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:$(PATH)

all:
	pandoc -c swiss.css -f markdown -t html resume.md -o resume.html
	wkhtmltopdf resume.html resume.pdf
	pandoc -t latex resume.html -o resume.latex.pdf
	scp resume.html prgmr:~/web/plhw/cv/index.html
	scp swiss.css prgmr:~/web/plhw/cv/
	blc http://plhw.org/cv
