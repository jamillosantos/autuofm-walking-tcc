#!/bin/bash
for f in imagens/svg/*.svg; do
	pdfimage="${f%.*}.pdf"
	pngimage="${f%.*}.png"
	echo "Exporting: $f to $pdfimage"
	inkscape -D -z "--file=$f" "--export-pdf=$pdfimage" --export-latex
	inkscape -D -z "--file=$f" "--export-png=$pngimage" -w=2000
done
mv imagens/svg/*.png imagens/png
