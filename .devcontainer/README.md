# Dev Container for LaTeX Resume

This container uses the `blang/latex` image for building LaTeX documents.

## Features

- Full LaTeX toolchain (via Docker image)
- Pre-installs the VS Code LaTeX Workshop extension for editing and preview

## Usage

- Open this folder in VS Code and "Reopen in Container"
- Build your resume with:
  ```sh
  pdflatex resume.tex
  pdflatex resume.tex  # Run twice for references
  ```
- Or use the LaTeX Workshop extension to build and preview

## Notes

- The workspace is mounted at `/workspace` inside the container.
- The PDF output will appear in the project folder as `resume.pdf`.
