FILES="01_front_material/1_title.md \
"break_____________________" \
01_front_material/2_declaration.md \
break_____________________ \
01_front_material/3_abstract.md \
break_____________________ \
01_front_material/4_acknowledgements.md \
break_____________________ \
92_toc/table_of_contents.md \
break_____________________ \
92_toc/list_of_figures.md \
break_____________________ \
92_toc/list_of_tables.md \
break_____________________ \
00_chapters/chapter0_chaprtersStartHere.md \
break_____________________ \
00_chapters/chapter1_introduction.md \
break_____________________ \
00_chapters/chapter2_extra_results.md \
break_____________________ \
00_chapters/chapter3_generaldiscussion.md \
break_____________________ \
00_chapters/chatper4_demo.md \
break_____________________ \
00_chapters/chapter5_monday.md \
break_____________________ \
04_appendices/0_appendices.md \
break_____________________ \
04_appendices/A_software_tools.md \
break_____________________ \
04_appendices/B_questionnaire.md \
break_____________________ \
04_appendices/C_webapplication.md \
break_____________________ \
05_references/references.md \
break_____________________"

echo $FILES

docker run -v$(pwd):/data --user $(id -u):$(id -g)\
    ghcr.io/blazej-smorawski/pg-thesis-template \
    --pdf-engine=xelatex \
    --output=output/thesis.pdf \
    -H "91_preable/preamble.tex" \
    -V 'mainfont:Arial' \
    -V fontsize=10pt -V documentclass:book \
    -V papersize:a4paper -V classoption:openright --number-sections \
    --csl=harvard-limerick.csl $FILES \
    --bibliography=05_references/references.bib