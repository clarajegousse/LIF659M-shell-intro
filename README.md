# LÍF659M — Introduction to the Shell for Bioinformatics

Quarto book for the shell introduction session of LÍF659M at the University of Iceland.

**Published site:** https://clarajegousse.github.io/LIF659M-shell-intro/

## Building locally

Requires [Quarto](https://quarto.org/docs/get-started/).

```bash
quarto preview   # live preview in browser
quarto render    # build to docs/
```

## Deploying to GitHub Pages

1. Render the book: `quarto render`
2. Commit and push the `docs/` folder
3. In the repo Settings → Pages → set source to `main` branch, `/docs` folder

## Data

The backup FASTA file (`NC_007205.1`, *Pelagibacter ubique* HTCC1062) is hosted at:

```
https://raw.githubusercontent.com/clarajegousse/training-data/main/pelagibacter_ubique.fasta
```

To update it:

```bash
efetch -db nucleotide -id NC_007205.1 -format fasta > pelagibacter_ubique.fasta
# then add to clarajegousse/training-data repo
```

## Acknowledgements

Adapted from [Data Carpentry: Shell Genomics](https://datacarpentry.org/shell-genomics/).
