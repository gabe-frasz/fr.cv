#!/bin/bash

output_dir="generated"
temp_md="temp_cv.md"

mkdir -p $output_dir

for layout_path in layouts/*.md; do
  layout_name=$(basename "$layout_path" .md)
    
  echo "🏗️ Processing layout: $layout_name"

  for i18n_path in i18n/*.yaml; do
    lang=$(basename "$i18n_path" .yaml)
        
    echo "🌍 Language: $lang"
        
    pdf_file="$output_dir/cv-$layout_name-$lang.pdf"

    echo "" | pandoc \
      --from markdown \
      --template="$layout_path" \
      --metadata-file="$i18n_path" \
      --to markdown \
      -o "$temp_md"

    pandoc "$temp_md" \
      --css=css/global.css \
      --pdf-engine=weasyprint \
      --metadata pagetitle="cv-$layout_name-$lang" \
      -o "$pdf_file"

    echo "✅ Generated: $pdf_file"
  done
done

rm $temp_md
