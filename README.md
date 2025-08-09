# Ars Post Faber

## Clone Repo
```
git clone https://github.com/jmuozan/ArsPostFaber-Thesis.git
```

## Run Compilation
```
latexmk -pvc main.tex
```

## Delete extra stuff when done

```
# Clean auxiliary files but keep the PDF
latexmk -c

# Clean everything including the PDF
latexmk -C
```
