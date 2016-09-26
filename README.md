# bio-dockers
:whale: Dockerized bioinformatic tools.

[![Build Status](https://travis-ci.org/alexcoppe/bio-dockers.svg?branch=master)](https://travis-ci.org/alexcoppe/bio-dockers)

A set of bioinformatics applications installed into a [Docker](https://www.docker.com) container, ready to be downloaded and used on any operating system 
supported by [Docker](https://www.docker.com/).
All images are based on the [official Alpine Linux Docker image](https://hub.docker.com/_/alpine/) 
which is only 5 MB of size. The main goal is to obtain decently small portable bioinformatics software, easy to install and run.
In order to use a container on your computer, [install](https://docs.docker.com/engine/installation/) 
the Docker daemon and check the links in the table 
below for instruction on how to pull the images from [Dockerhub](https://hub.docker.com/) and run them.

| Program        | Description| Version |
| ------------- |:-------------| :-------------|
| [Burrows-Wheeler Aligner](https://github.com/alexcoppe/bio-dockers/tree/master/bwa) |BWA is a software package for mapping low-divergent sequences against a large reference genome| 0.7.15 |
| [CIRCOS](https://github.com/alexcoppe/bio-dockers/tree/master/circos) |A software package for visualizing data in a circular layout  | 0.69-3 |
| [FastQC](https://github.com/alexcoppe/bio-dockers/tree/master/fastqc) | A quality control tool for high throughput sequence data | 0.11.5 |
| [FASTX-Toolkit](https://github.com/alexcoppe/bio-dockers/tree/master/fastx-toolkit-lite) (lite) | A collection of command line tools for Short-Reads FASTA/FASTQ files preprocessing (lite version: no graphic commands) | 0.0.14 |
| [FASTX-Toolkit](https://github.com/alexcoppe/bio-dockers/tree/master/fastx-toolkit-lite) | A collection of command line tools for Short-Reads FASTA/FASTQ files preprocessing | 0.0.14 |
| [gatk](https://github.com/alexcoppe/bio-dockers/tree/master/gatk) | A variety of tools with a primary focus on variant discovery and genotyping | 3.6 |
| [MuTect](https://github.com/alexcoppe/bio-dockers/tree/master/mutect) | A method for the reliable and accurate identification of somatic point mutations in next generation sequencing data of cancer genomes  | 1.1.5 |
| [Picard Tools](https://github.com/alexcoppe/bio-dockers/tree/master/picard) | A set of command line tools for manipulating high-throughput sequencing (HTS) data and formats | 2.6.0 |
| [Samtools](https://github.com/alexcoppe/bio-dockers/tree/master/samtools) | A suite of programs for interacting with high-throughput sequencing data | 1.3.1 |
| [VarScan](https://github.com/alexcoppe/bio-dockers/tree/master/varscan) | Variant detection in massively parallel sequencing data | 2.3.9 |

