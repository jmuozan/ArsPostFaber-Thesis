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
# Clean auxiliary files but keep the PDF
latexmk -c

# Clean everything including the PDF
latexmk -C
```

## If svg not working on latex convert to pdf

```bash
# Install Inkscape
brew install --cask inkscape

# Logo directory
cd figures/logo/

# Convert IAAC logo
inkscape iaac_logo.svg --export-pdf=iaac_logo.pdf

# Convert Fab Lab BCN logo
inkscape fablabbcn-logo.svg --export-pdf=fablabbcn-logo.pdf
```

## Export to word (.docx)
```bash
pandoc main.tex -o output.docx
```