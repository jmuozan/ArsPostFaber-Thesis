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
\clearpage


\setcounter{chapter}{4}
\setcounter{section}{0}

% Add the chapter to table of contents
\addcontentsline{toc}{chapter}{\numberline{4}Ars Post Faber: Towards Unified Digital Agency}

% Set up page style for this chapter (assuming fancyhdr is loaded in preamble)
\pagestyle{fancy}
\fancyhf{} % Clear all header and footer fields
\fancyhead[L]{\footnotesize\textit{Ars Post Faber: Digital Fabrication Democratization Through Embodied Knowledge Preservation}}
\fancyfoot[C]{\thepage} % Page number in footer center
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Custom chapter title to match abstract formatting
\noindent
{\Large\textbf{Chapter 4: Ars Post Faber: Towards Unified Digital Agency}}
\vspace{0.3cm}
\hrule
\vspace{0.8cm}
\label{ch:ArsPostFaber}

% Set no paragraph indentation
\setlength{\parindent}{0pt}

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

\subsection{Open Source Foundation and Community Authority}

\textit{Ars Post Faber} is released under the MIT License, representing a commitment to genuine democratization through community control over the technological development of the projects instead of concentrating it within proprietary systems. The MIT License text explicitly defines the parameters of this collaborative approach:

\begin{verbatim}
MIT License

Copyright (c) 2025 Jorge Muñoz Zanón

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
\end{verbatim}

This licensing framework empowers makers to build upon each other's work in ways that create new expressions of creative agency. Unlike proprietary systems that require users to adapt their practices to predetermined software logic, the open source model enables the software itself to evolve in response to diverse making practices and cultural contexts. Makers can fork the codebase to develop specialized versions for particular fabrication techniques, contribute improvements that benefit the broader community, or integrate components into entirely new workflows that reflect their unique creative approaches.

\vspace{0.5cm}

The collaborative development model inherent in open source software mirrors the guild-like knowledge sharing that characterized pre-industrial craft communities. However, rather than being constrained by geographic proximity or trade boundaries, digital collaboration enables global communities of makers to collectively develop fabrication tools that preserve and extend traditional craft knowledge while leveraging on contemporary computational capabilities. This represents a form of \textit{distributed intelligence}, where individual makers contribute specialized knowledge that enhances the collective capacity for creative expression.

\subsection{Plugin Architecture and Computational Transparency}

The plugin architecture operates through computational augmentation rather than automation. Each component works as a mediator expanding human creative capabilities while preserving decision-making authority throughout the fabrication process. The goal is to find newer ways to express through CAD no matter how unoptimal or unefficient they are.

\vspace{0.5cm}

Integration with Grasshopper leverages the platform's node-based visual programming environment to maintain transparency in computational processes. Unlike black-box systems that hide their operational logic, Grasshopper's visual programming approach enables makers to understand, modify, and extend the computational relationships that connect design intentions with fabrication outcomes.


-->