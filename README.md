# Ars Post Faber

## Clone Repo
```
git clone https://github.com/jmuozan/ArsPostFaber-Thesis.git
```

## Run Compilation
```
latexmk -pvc main.tex
```


## Delete extra stuff when done
```
# Clean auxiliary files but keep the PDF
latexmk -c

# Clean everything including the PDF
latexmk -C
```



## If svg not working on latex convert to pdf

```
# Logo directory
cd figures/logo/

# Convert IAAC logo
inkscape iaac_logo.svg --export-pdf=iaac_logo.pdf

# Convert Fab Lab BCN logo
inkscape fablabbcn-logo.svg --export-pdf=fablabbcn-logo.pdf
```

## Export to word (.docx)
```
pandoc main.tex -o output.docx
```