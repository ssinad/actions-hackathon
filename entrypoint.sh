#!/bin/sh

latexmk -cd -pdf -silent -usepretex='\providecommand{\finalOption}{final}' $1.tex