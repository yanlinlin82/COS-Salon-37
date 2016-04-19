TARGET=$(patsubst %.Rmd,%.html,$(wildcard *.Rmd))

.PHONY: all clean

all: ${TARGET}

clean:
	@rm -fv ${TARGET}

%.html: %.Rmd styles.css
	Rscript -e "rmarkdown::render('$<')"
