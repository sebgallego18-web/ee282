#!/bin/bash
#EE282 Final Project Scripts 
#Sebastian Gallego

# STEP 1. DOWNLOADING DATA FROM NCBI AND CHECKING FILE INTEGRITY
# same exact steps followed for all samples  

# "web=" defines the web link, and "prefix=defines the data name"
web=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/910/591/885/GCF_910591885.1_iyBomTerr1.2/
prefix=GCF_910591885.1_iyBomTerr1.2

# download the .faa, .gff, and md5checksums files 
wget -c "$web/${prefix}_protein.faa.gz" \
	"$web/${prefix}_genomic.gff.gz" \
	"$web/md5checksums.txt"

# rename checksum file so it does not get overwrited when you download the next one, and so you know which checksum belongs to which sample
mv md5checksums.txt BomTerr1.2_md5checksums.txt 


# Check file integrity, ONLY for the files I downloaded. -c checks if the checksum and files match. 
md5sum -c --ignore-missing BomTerr1.2_md5checksums.txt 

# output...
# ./GCF_910591885.1_iyBomTerr1.2_genomic.gff.gz: OK
# ./GCF_910591885.1_iyBomTerr1.2_protein.faa.gz: OK






 

