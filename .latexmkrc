# .latexmkrc
$pdf_mode = 4;  # Use XeLaTeX
$postscript_mode = 0;
$dvi_mode = 0;
$bibtex_use = 2;
$pdf_previewer = 'open';  # macOS (use 'evince' on Linux, 'start' on Windows)
$pvc_view_file_via_temporary = 0;
# Automatically clean up auxiliary files
$clean_ext = "synctex.gz nav snm vrb bbl run.xml bcf";