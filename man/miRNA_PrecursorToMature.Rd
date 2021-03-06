% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/miRBaseConvert.R
\name{miRNA_PrecursorToMature}
\alias{miRNA_PrecursorToMature}
\title{Convert the precursors to the corresponding mature miRNAs}
\usage{
miRNA_PrecursorToMature(miRNANames, version = NULL)
}
\arguments{
\item{miRNANames}{A character vector representing the miRNA names.}

\item{version}{The default is \strong{NULL} representing the most possible latest version of the input miRNA Names will be checked automatically.
Otherwise, a character value representing the version corresponding the input miRNA Names.
Users can apply the function \strong{getAllVersionInfo()} to get the available miRNA version names.
The optional values are in below:\cr
"v6","v7_1","v8","v8_1","v8_2","v9","v9_1","v9_2","v10","v10_1","v11","v12","v13","v14",\cr
"v15","v16","v17","v18","v19","v20","v21".\cr}
}
\value{
A data frame(nx3). The number of rows equal to the input miRNA names. The three columns are defined as below:
\itemize{
 \item \strong{OriginalName} : The input miRNA Names.\cr
 \item \strong{Mature1} : The corresponding mature miRNAs (always "-5p") .\cr
 \item \strong{Mature2} : The corresponding mature miRNAs (always "-3p") .\cr
 }
}
\description{
This function converts the precursors to the corresponding mature miRNAs in the specified miRBase version.
}
\note{
If the input miRNA Names mingle mature miRNA names, the mature miRNA names will match to themselves in the output.
}
\examples{
miRNANames=c("pma-mir-100a","sko-mir-92a","hsa-mir-6131","mtr-MIR2655i",
"mmu-mir-153","mtr-MIR2592am","mml-mir-1239","xtr-mir-128-2","oan-mir-100",
"mmu-mir-378b","hsa-miR-508-5p","mmu-miR-434-3p")
result=miRNA_PrecursorToMature(miRNANames)
}
\author{
Xu, Taosheng \email{taosheng.x@gmail.com}
}
