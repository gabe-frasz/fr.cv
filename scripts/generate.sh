#!/bin/bash

mkdir -p output

for layout_path in layouts/*.md; do
  layout_name=$(basename "$layout_path" .md)
    
  echo "🏗️ Processing layout: $layout_name"

  for i18n_path in i18n/*.yaml; do
    lang_name=$(basename "$i18n_path" .yaml)
        
    echo "🌍 Language: $lang_name"
        
    temp_md="temp_cv.md"
    pdf_file="output/cv-${layout_name}-${lang_name}.pdf"

    echo "" | pandoc \
      --from markdown \
      --template="$layout_path" \
      --metadata-file="$i18n_path" \
      --to markdown \
      -o "$temp_md"

    pandoc "$temp_md" \
      --css=css/global.css \
      --pdf-engine=weasyprint \
      --metadata pagetitle="cv $layout_name - $lang_name" \
      -o "$pdf_file"

    echo "✅ Generated: $pdf_file"
  done
done

rm temp_cv.md
