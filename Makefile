FINAL=learn-shutit-the-hard-way
SOURCE=book
WEBSITE=shutit.tk

book:
	dexy

view: $(FINAL).pdf
	evince $(FINAL).pdf

sync: book
	rsync -avz --delete --exclude "scripts/"* --exclude "${FINAL}.*" output/ $(WEBSITE)/book
