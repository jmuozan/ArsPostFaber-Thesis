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

## Export to word (.docx)

```bash
pandoc main.tex -o output.docx
```