% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gl.R
\name{marg_alt_gl}
\alias{marg_alt_gl}
\title{Marginal likelihood under alternative using genotype log-likelihoods}
\usage{
marg_alt_gl(gl, beta = rep(1, 5), lg = TRUE, ...)
}
\arguments{
\item{gl}{A matrix of genotype log-likelihoods. The rows index the
individuals and the columns index the possible genotypes. So
\code{gl[i, k]} is the genotype log-likelihood for individual i and
genotype k-1.}

\item{beta}{The vector of hyperparameters.}

\item{lg}{A logical. Should we log the marginal likelihood (\code{TRUE})
or not (\code{FALSE})?}

\item{...}{Additional parameters sent to \code{\link[rstan]{sampling}()}.}
}
\value{
The marginal likelihood.
}
\description{
Marginal likelihood under alternative using genotype log-likelihoods
}
\examples{
x <- c(1, 2, 7, 3, 3)
gl <- hwep::simgl(nvec = x, rdepth = 100, od = 0, bias = 1, seq = 0)
marg_alt_gl(gl = gl, chains = 1)

}
\author{
Mira Thakkar and David Gerard
}
