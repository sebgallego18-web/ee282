#!/bin/bash
# Summarize Genome Assembly
# Step 1. Downloading the chromosomes and checksum data from Flybase

wget -c https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/fasta/dmel-all-chromosome-r6.66.fasta.gz
wget -c https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/fasta/md5sum.txt

# Step 2. Checking file integrity

md5sum -c --ignore-missing md5sum.txt

# Step 3. Genome summary
faSize dmel-all-chromosome-r6.66.fasta.gz > hw3_genome_summary.txt
less hw3_genome_summary.sh	 
