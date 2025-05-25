# Resume

This repository contains my professional resume written in LaTeX. It is version-controlled and maintained for easy updates and PDF generation. The project now uses a devcontainer for consistent development environments across platforms.

## How to Build

### Using VS Code with Dev Container (Recommended)

1. **Prerequisites:**
   - [VS Code](https://code.visualstudio.com/) installed
   - [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) installed
   - [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running

2. **Setup:**
   ```bash
   git clone git@github.com:CHaerem/Resume.git
   cd Resume
   code .
   ```

3. **When VS Code opens:**
   - Click "Reopen in Container" when prompted, or
   - Press F1, select "Dev Containers: Reopen in Container"

4. **Build the PDF:**
   - The PDF will be automatically built when the container starts
   - To rebuild: Use VS Code LaTeX Workshop extension or run:
     ```bash
     pdflatex resume.tex
     ```

### macOS (Legacy Method)

1. **Install MacTeX** (if not already installed):
   ```zsh
   brew install --cask mactex
   # or download from https://tug.org/mactex/
   ```
2. **Clone the repository:**
   ```zsh
   git clone git@github.com:CHaerem/Resume.git
   cd Resume
   ```
3. **Build the PDF:**
   - Using Docker:
     ```zsh
     docker run --rm -v "$PWD":/data blang/latex pdflatex resume.tex
     docker run --rm -v "$PWD":/data blang/latex pdflatex resume.tex
     ```
   - Or manually (if you have pdflatex):
     ```zsh
     pdflatex resume.tex
     pdflatex resume.tex  # Run twice for references
     ```

The output will be `resume.pdf` in the same directory.

## Files

- `resume.tex`: Main LaTeX source file
- `profile.jpeg`: Profile photo (add your image here)
- `README.md`: This file
- `.gitignore`: Ignores LaTeX build artifacts, but tracks `resume.pdf`
- `resume.pdf`: Built PDF version of your resume
- `.devcontainer/`: Configuration for VS Code devcontainer
  - `devcontainer.json`: Dev container configuration file
  - `Dockerfile`: Docker configuration with TeX Live installed

## Customization

- Edit `resume.tex` to update your information.
- Replace `profile.jpeg` with your own photo (optional).

## Repository

This project is hosted privately at: [github.com/CHaerem/Resume](https://github.com/CHaerem/Resume)

## License

Personal use only. Contact the author for other uses.
