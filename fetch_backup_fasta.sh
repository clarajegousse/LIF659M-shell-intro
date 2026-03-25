#!/usr/bin/env bash
# fetch_backup_fasta.sh
# Run this locally to fetch the Pelagibacter ubique genome from NCBI
# and prepare it for upload to clarajegousse/training-data

set -euo pipefail

ACCESSION="NC_007205.1"
OUTFILE="pelagibacter_ubique.fasta"

echo "Fetching ${ACCESSION} from NCBI..."

efetch -db nucleotide -id "${ACCESSION}" -format fasta > "${OUTFILE}"

# Verify
LINES=$(wc -l < "${OUTFILE}")
SIZE=$(wc -c < "${OUTFILE}")
echo "Done: ${OUTFILE} — ${LINES} lines, ${SIZE} bytes"

echo ""
echo "Next steps:"
echo "  1. Copy ${OUTFILE} into your local clone of clarajegousse/training-data"
echo "  2. git add ${OUTFILE}"
echo "  3. git commit -m 'Add Pelagibacter ubique genome (NC_007205.1)'"
echo "  4. git push"
