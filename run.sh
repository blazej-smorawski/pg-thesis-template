docker run -v$(pwd):/data --user $(id -u):$(id -g)\
    ghcr.io/group-project-gut/pg-thesis-template \
    --pdf-engine=xelatex \
    --output=output/thesis.pdf \
    -H "91_preable/preamble.tex" \
    -V 'mainfont:Arial'\
    -V fontsize=10pt -V documentclass:book \
    -V papersize:a4paper -V classoption:openright --number-sections \
    --csl=harvard-limerick.csl ./04_appendices/A_software_tools.md \
    --bibliography=05_references/references.bib