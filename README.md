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
git reset HEAD main.pdf
git reset HEAD output.docx

# Commiting and pushing
git commit -m "commit message"
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
\textit{The craftsperson's relationship with their tools shapes not only what they make, but how they think about making itself.}

\vspace{0.5cm}

The theoretical framework developed in the previous chapters culminates in a practical question: \textit{How might digital design tools be restructured to preserve the continuous dialogue between maker, material, and machine that characterizes unified agency?} This chapter documents the development of \textit{Ars Post Faber}, an open-source Grasshopper plugin that attempts to bridge the gap between the conception-execution separation identified in contemporary CAD/CAM workflows.

\vspace{0.5cm}

Drawing from the experimental insights gathered through \textit{CR3ATED}, \textit{AI Tools}, and the \textit{Component that Makes}, \textit{Ars Post Faber} represents an integrated approach to preserving embodied knowledge within digital fabrication contexts. Rather than simplifying tools to increase accessibility or automating processes to eliminate complexity, the plugin introduces new forms of interaction that maintain computational capabilities while enabling the adaptive authority of the user.

\vspace{0.5cm}

The name \textit{Ars Post Faber} deliberately references both craft traditions and contemporary technological possibilities. \textit{Ars}, from the Latin meaning skill or craft, acknowledges the continuity with traditional making practices that this research seeks to preserve. \textit{Post Faber}, meaning "after the maker," suggests not the elimination of human creative agency but its transformation within digitally-mediated contexts. This represents neither a nostalgic return to pre-industrial craft nor a wholesale embrace of automated production, but how contemporary computational capabilities might support rather than replace the adaptive decision-making that enables skilled making.

\section{From Theory to Implementation}

The development of \textit{Ars Post Faber} required translating the theoretical insights about unified agency, preservation-based democratization, and adaptive authority into specific design principles that could guide software implementation. This translation process challenged the maintainance of theoretical coherence while addressing the practical constraints and opportunities present within existing CAD environments.

\subsection{Preserving Process Over Product}

Traditional CAD workflows prioritize the efficient production of geometric specifications suitable for manufacturing, treating the design process itself as expendable scaffolding that can be discarded once final specifications are determined. This product-centered approach aligns with the distributed agency model that concentrates creative authority within separate design phases while rendering material execution increasingly automated and non-responsive.

\vspace{0.5cm}

\textit{Ars Post Faber} inverts this priority by treating the creative process as equally important to the final geometric outcome. Rather than optimizing for efficient specification delivery, the plugin preserves the complete narrative of design development, including iterations, modifications, decision points, and even errors that contributed to the final result. This process preservation enables future makers to understand not just what was created, but how and why creative decisions emerged through the making dialogue.

\vspace{0.5cm}

By maintaining the complete creative narrative, \textit{Ars Post Faber} enables what might be termed \textit{generative reproduction}, where future implementations or attempts to replicate can build upon previous work while adapting to new contexts.
-->