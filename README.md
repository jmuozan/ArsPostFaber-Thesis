# Ars Post Faber

## Clone Repo

```bash
git clone https://github.com/jmuozan/ArsPostFaber-Thesis.git
```

## Run Compilation

```bash
latexmk -pvc main.tex
```

## Delete extra stuff when done

```bash
# Clean auxiliary files keeping the PDF
latexmk -c

# Clean everything including the PDF
latexmk -C
```

## If svg not working on latex convert to pdf

```bash
# Install Inkscape MacOS
brew install --cask inkscape

# Logo directory
cd figures/logo/

# Convert IAAC logo to pdf
inkscape iaac_logo.svg --export-pdf=iaac_logo.pdf

# Convert Fab Lab BCN logo to pdf
inkscape fablabbcn-logo.svg --export-pdf=fablabbcn-logo.pdf
```

## Download the CSL file
```bash
# Download Harvard CSL style
curl -o harvard-cite-them-right.csl "https://www.zotero.org/styles/harvard-cite-them-right"
```

## Export to word (.docx)

```bash
pandoc main.tex -o output.docx \
  --citeproc \
  --bibliography=references.bib \
  --extract-media=./media \
  --toc \
  --toc-depth=2
```

## PDF Compression

```bash
# High compression (smallest file)
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
   -dNOPAUSE -dQUIET -dBATCH -sOutputFile=main_compressed.pdf main.pdf

# Medium compression (good balance)
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer \
   -dNOPAUSE -dQUIET -dBATCH -sOutputFile=main_compressed.pdf main.pdf

# Custom compression with specific image quality
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress \
   -dColorImageResolution=150 -dGrayImageResolution=150 \
   -dMonoImageResolution=300 -dColorImageDownsampleType=/Bicubic \
   -dGrayImageDownsampleType=/Bicubic -dMonoImageDownsampleType=/Bicubic \
   -dNOPAUSE -dQUIET -dBATCH -sOutputFile=main_compressed.pdf main.pdf
```

## Finding big files before pushing :))))

```bash
find . -type f -size +25M -exec ls -lh {} \;
```

## Pushing everything except big files 

```bash
# Adding all files
git add .

# Removing specific files from staging
git reset HEAD specific-file.txt
git reset HEAD another-file.log

# Commiting and pushing
git commit -m "Your commit message"
git push
```

## Citation

If you find this work helpful, please consider citing:

```
@mastersthesis{munozzanon2025,
  title        = {Ars Post Faber: Digital Fabrication Democratization Through Embodied Knowledge Preservation},
  author       = {Jorge Muñoz Zanón},
  year         = 2025,
  month        = {August},
  address      = {Barcelona, Catalunya},
  note         = {Available at \url{https://github.com/jmuozan/ArsPostFaber-Thesis}},
  school       = {Institute for Advanced Architecture of Catalonia (IAAC)},
  type         = {Master's thesis},
}
```


<!--
```bash
pandoc main.tex -o output.docx
```
-->