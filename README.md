# Resume

This repository contains my professional resume written in LaTeX. It is version-controlled and maintained for easy updates and PDF generation.

## How to Build (macOS)

1. **Install MacTeX** (if not already installed):
   ```sh
   brew install --cask mactex
   # or download from https://tug.org/mactex/
   ```
2. **Clone the repository:**
   ```sh
   git clone git@github.com:CHaerem/Resume.git
   cd Resume
   ```
3. **Build the PDF:**
   - Using the Makefile (recommended):
     ```sh
     make
     ```
   - Or manually:
     ```sh
     pdflatex resume.tex
     pdflatex resume.tex  # Run twice for references
     ```

The output will be `resume.pdf` in the same directory.

## Files
- `resume.tex`: Main LaTeX source file
- `profile.jpeg`: Profile photo (add your image here)
- `Makefile`: For easy build and cleanup
- `.gitignore`: Ignores LaTeX build artifacts

## Customization
- Edit `resume.tex` to update your information.
- Replace `profile.jpeg` with your own photo (optional).

## Repository
This project is hosted privately at: [github.com/CHaerem/Resume](https://github.com/CHaerem/Resume)

## License
Personal use only. Contact the author for other uses.
