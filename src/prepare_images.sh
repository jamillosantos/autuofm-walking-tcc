#!/bin/bash
for f in imagens/svg/*.svg; do
	pdfimage="${f%.*}.pdf"
	echo "Exporting: $f to $pdfimage"
	inkscape -D -z "--file=$f" "--export-pdf=$pdfimage" --export-latex
done
