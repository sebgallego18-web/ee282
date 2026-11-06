# Summarize Genome Assembly
## Downloading the chromosomes and checksum data from Flybase

```
$wget -c https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/fasta/dmel-all-chromosome-r6.66.fasta.gz

$wget -c https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/fasta/md5sum.txt
```

## Checking file integrity

```
$md5sum -c --ignore-missing md5sum.txt 

```

## Genome summary 

```
$faSize dmel-all-chromosome-r6.66.fasta.gz > hw3_genome_summary.txt
```
```
$less hw3_genome_summary.sh	
```
Output
```
143726002 bases (1152978 N's 142573024 real 142573024 upper 0 lower) in 1870 sequences in 1 files
Total size: mean 76858.8 sd 1382100.2 min 544 (211000022279089) max 32079331 (3R) median 1577
N count: mean 616.6 sd 6960.7
U count: mean 76242.3 sd 1379508.4
L count: mean 0.0 sd 0.0
%0.00 masked total, %0.00 masked real
```

# Summarize Genome Annotation

## download the gzipped gtf annotation file and checksum data for D. melanogaster
```
$wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/gtf/dmel-all-r6.66.gtf.gz

$wget https://s3ftp.flybase.org/genomes/Drosophila_melanogaster/dmel_r6.66_FB2025_05/gtf/md5sum.txt
```
## Check file integrity 
```
$md5sum -c md5sum.txt 
```

## Determine total number of features of each type, sorted from the most common to the least common. 
```
$bioawk -c gff '{print $3}' dmel-all-r6.66.gtf.gz | sort | uniq -c | sort -nr > hw3_annotation_features.txt
```
```
$less hw3_annotation_features.txt
```
Output
```
 190176 exon
 163377 CDS
  46856 5UTR
  33778 3UTR
  30922 start_codon
  30862 stop_codon
  30836 mRNA
  17872 gene
   3059 ncRNA
    485 miRNA
    365 pseudogene
    312 tRNA
    270 snoRNA
    262 pre_miRNA
    115 rRNA
     32 snRNA
```



## Determine total number of genes per chromosome arm (X, Y, 2L, 2R, 3L, 3R, 4)

```bash
$bioawk -c gff '$3=="gene" {print $1}' dmel-all-r6.66.gtf.gz | grep -E '^(X|Y|2L|2R|3L|3R|4)$' | sort | uniq -c | sort -nr > hw3_annotation_genes.sh
```
```
less hw3_annotation_genes.sh
```
Output 

```
   4226 3R
   3649 2R
   3508 2L
   3481 3L
   2704 X
    114 4
    113 Y
```
