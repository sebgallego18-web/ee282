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

# Osmia lignaria
web=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/051/020/975/GCF_051020975.1_iyOsmLign1/
prefix=GCF_051020975.1_iyOsmLign1

wget -c "$web/${prefix}_protein.faa.gz" \
	"$web/${prefix}_genomic.gff.gz" \
	"$web/md5checksums.txt"

mv md5checksums.txt OsmLign1_md5checksums.txt
md5sum -c --ignore-missing OsmLign1_md5checksums.txt

# Halictus rubicundus
web=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/050/948/215/GCF_050948215.1_iyHalRubi1_principal/
prefix=GCF_050948215.1_iyHalRubi1_principal

wget -c "$web/${prefix}_protein.faa.gz" \
	"$web/${prefix}_genomic.gff.gz" \
	"$web/md5checksums.txt"

mv md5checksums.txt HalRubi1_md5checksums.txt
md5sum -c --ignore-missing HalRubi1_md5checksums.txt

# Colletes lattitarsis
web=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/051/014/445/GCF_051014445.1_iyColLati1/
prefix=GCF_051014445.1_iyColLati1

wget -c "$web/${prefix}_protein.faa.gz" \
	"$web/${prefix}_genomic.gff.gz" \
	"$web/md5checksums.txt"

mv md5checksums.txt ColLati1_md5checksums.txt
md5sum -c --ignore-missing ColLati1_md5checksums.txt

# Andrena cerasifolii
web=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/050/908/995/GCF_050908995.1_iyAndCera1_principal/
prefix=GCF_050908995.1_iyAndCera1_principal

wget -c "$web/${prefix}_protein.faa.gz" \
	"$web/${prefix}_genomic.gff.gz" \
	"$web/md5checksums.txt"

mv md5checksums.txt AndCera1md5checksums.txt
md5sum -c --ignore-missing AndCera1md5checksums.txt

# Vespa crabro
web=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/910/589/235/GCF_910589235.1_iyVesCrab1.2/
prefix=GCF_910589235.1_iyVesCrab1.2

wget -c "$web/${prefix}_protein.faa.gz" \
	"$web/${prefix}_genomic.gff.gz" \
	"$web/md5checksums.txt"

mv md5checksums.txt VesCrab1.2_md5checksums.txt
md5sum -c --ignore-missing VesCrab1.2_md5checksums.txt

# Diachasmimorpha longicaudata
web=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/034/640/455/GCF_034640455.1_iyDiaLong2/
prefix=GCF_034640455.1_iyDiaLong2

wget -c "$web/${prefix}_protein.faa.gz" \
	"$web/${prefix}_genomic.gff.gz" \
	"$web/md5checksums.txt"

mv md5checksums.txt DiaLong2_md5checksums.txt
md5sum -c --ignore-missing DiaLong2_md5checksums.txt

# Nasonia vitripennis
web=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/009/193/385/GCF_009193385.2_Nvit_psr_1.1/
prefix=GCF_009193385.2_Nvit_psr_1.1

wget -c "$web/${prefix}_protein.faa.gz" \
	"$web/${prefix}_genomic.gff.gz" \
	"$web/md5checksums.txt"

mv md5checksums.txt Nvit_psr_1.1_md5checksums.txt
md5sum -c --ignore-missing Nvit_psr_1.1_md5checksums.txt

# Belonocnema kinseyi
web=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/010/883/055/GCF_010883055.1_B_treatae_v1/
prefix=GCF_010883055.1_B_treatae_v1

wget -c "$web/${prefix}_protein.faa.gz" \
	"$web/${prefix}_genomic.gff.gz" \
	"$web/md5checksums.txt"

mv md5checksums.txt B_treatae_v1_md5checksums.txt
md5sum -c --ignore-missing B_treatae_v1_md5checksums.txt

# Vespula vulgaris
web=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/905/475/345/GCF_905475345.1_iyVesVulg1.1/
prefix=GCF_905475345.1_iyVesVulg1.1

wget -c "$web/${prefix}_protein.faa.gz" \
	"$web/${prefix}_genomic.gff.gz" \
	"$web/md5checksums.txt"

mv md5checksums.txt VesVulg1.1_md5checksums.txt
md5sum -c --ignore-missing VesVulg1.1_md5checksums.txt









