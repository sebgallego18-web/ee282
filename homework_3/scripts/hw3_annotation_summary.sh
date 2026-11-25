#!/bin/bash
# Summarize Genome Annotation

# Step 1. download the gzipped gtf annotation file and checksum data for D. melanogaster
wget -c https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/gtf/dmel-all-r6.66.gtf.gz
wget -c -O gtf_md5sum.txt https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/gtf/md5sum.txt

# Step 2. Check file integrity
md5sum -c --ignore-missing gtf_md5sum.txt

# Step 3. Determine total number of features of each type, sorted from the most common to the least common.
bioawk -c gff '{print $3}' dmel-all-r6.66.gtf.gz | sort | uniq -c | sort -nr > hw3_annotation_features.txt
echo "features output to hw3_annotation_features.txt" 
#less hw3_annotation_features.txt

# Step 4.Determine total number of genes per chromosome arm (X, Y, 2L, 2R, 3L, 3R, 4)
bioawk -c gff '$3=="gene" {print $1}' dmel-all-r6.66.gtf.gz | grep -E '^(X|Y|2L|2R|3L|3R|4)$' | sort | uniq -c | sort -nr > hw3_annotation_genes.txt
echo "genes output to hw3_annotation_genes.txt"
#less hw3_annotation_genes.txt

