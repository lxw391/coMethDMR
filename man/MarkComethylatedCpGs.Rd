% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MarkComethylatedCpGs.R
\name{MarkComethylatedCpGs}
\alias{MarkComethylatedCpGs}
\title{Mark CpGs in contiguous and co-methylated region}
\usage{
MarkComethylatedCpGs(betaCluster_mat, rDropThresh_num = 0.5)
}
\arguments{
\item{betaCluster_mat}{matrix of beta values, with rownames = sample ids,
column names = CpG ids. Note that the CpGs need to be ordered by their genomic positions,
this can be accomplished by the \code{OrderCpGbyLocation} function.}

\item{rDropThresh_num}{thershold for min correlation between a cpg with sum of the
rest of the CpGs}
}
\value{
A data frame with the following columns:

\itemize{
  \item{\code{CpG} : }{CpG ID}

  \item{\code{keep} : }{The CpGs with \code{keep = 1} belong to the contiguous and
  co-methylated region}

  \item{\code{ind} : }{Index for the CpGs}

  \item{\code{r_drop} : }{The correlation between each CpG with the sum of the rest of the CpGs}
}
}
\description{
Mark CpGs in contiguous and co-methylated region
}
\details{
An outlier CpG in a genomic region will typically have low correlation with the rest of
 the CpGs in a genomic region. On the other hand, in a cluster of co-methylated CpGs, we expect
 each CpG to have high correlation with the rest of the CpGs. The \code{r.drop} statistic is used
 to identify these co-methylated CpGs here.
}
\examples{
   data(betaMatrix_ex1)
   MarkComethylatedCpGs(betaCluster_mat = betaMatrix_ex1)

   data(betaMatrix_ex2)
   MarkComethylatedCpGs(betaCluster_mat = betaMatrix_ex2)

   data(betaMatrix_ex3)
   MarkComethylatedCpGs(betaCluster_mat = betaMatrix_ex3)

   data(betaMatrix_ex4)
   MarkComethylatedCpGs(betaCluster_mat = betaMatrix_ex4, rDropThresh_num = 0.6)

}
