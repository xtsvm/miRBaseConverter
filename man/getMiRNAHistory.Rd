% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/miRBaseConvert.R
\name{getMiRNAHistory}
\alias{getMiRNAHistory}
\title{Get the detailed information of a single specified miRNA in all miRBase versions.}
\usage{
getMiRNAHistory(Accession)
}
\arguments{
\item{Accession}{A character representing the single Accession.}
}
\value{
A data frame (21X7) including all the history information (Precursor, Mature, Sequence) of the specified miRNA.
 Each row represents a miRBase version.
}
\description{
This function returns all available miRBase versions' information of a single specified miRNA.
}
\examples{
#####1,The input is a miRNA Name
miRNAName="hsa-miR-26b-5p"
result1=miRNA_NameToAccession(miRNAName,version="v21")
Accession=result1[,2]
result2=getMiRNAHistory(Accession)

#####2,The input is miRNA Accession
Accession="MIMAT0000765"
result3=getMiRNAHistory(Accession)

}
\author{
Xu, Taosheng \email{taosheng.x@gmail.com}
}
