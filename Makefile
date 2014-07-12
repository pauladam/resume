all:
	pandoc -c swiss.css  -f markdown -t html resume.md -o resume.html
	scp resume.html prgmr:~/web/plhw/cv/index.html
	scp swiss.css prgmr:~/web/plhw/cv/

