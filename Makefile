SHELL=/bin/bash
# TEX=pdflatex
TEX=xelatex

PDF=main.pdf
SOURCE=$(wildcard *.tex)

default: help

compile: $(PDF)  ## Compile

$(PDF): $(SOURCE)

%.pdf: %.tex
	$(TEX) $<

watch: ## Watch for changes
	watchman watch .
	watchman -- trigger . build "*.tex" "*.cls" -- make compile

unwatch: ## Clear watch
	watchman watch-del .

clean: ## Clean
	rm -f $(PDF) $(shell find -E . -iregex '.*.(log|aux|out)$$')

help: ## Display this help
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: clean watch unwatch compile help
