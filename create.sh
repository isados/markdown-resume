#!/bin/bash
convert_to_html="pandoc other_resume.md -f markdown -t html -c resume-stylesheet.css -s -o resume.html"
# watch ${convert_to_html}
`${convert_to_html}` &&
     wkhtmltopdf --enable-local-file-access resume.html resume.pdf