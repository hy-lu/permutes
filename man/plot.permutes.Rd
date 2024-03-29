% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plot.permutes}
\alias{plot.permutes}
\title{Create a heatmap of the results of cluster-based permutation testing.}
\usage{
\method{plot}{permutes}(
  x,
  type = c("LRT", "F", "t", "beta", "w2", "cluster_mass"),
  breaks = NULL,
  sig = NULL,
  ...
)
}
\arguments{
\item{x}{Output of \code{permu.test} or \code{clusterperm.lmer} or associated functions. You may want to subset it if you want to simulate zooming in.}

\item{type}{The quantity to plot. For ANOVA, the options are \code{'LRT'} (default; this is the permutation statistic, which is a likelihood-ratio-test statistic), \code{'F'}, \code{'p'} (this is the permutation p-value of the permutation statistic), or \code{'w2'} (omega squared; not available for mixed-effects models). For regression, the options are \code{'t'}, \code{'beta'}, or \code{'p'}.}

\item{breaks}{The granularity of the labels of the x axis. Pass `unique(x[,2])' to get a tick for every timepoint. Combine this trick with subsetting of your dataset, and perhaps averaging over all your dependent variables, to `zoom in' on your data to help you determine precisely where significance begins and stops to occur.}

\item{sig}{An optional column name. If specified, only cases with a value of <.05 in this column will be plotted. NULL by default, but suggested to be set to \code{'p.cluster_mass'} for easy visualization of the cluster-mass-test results, or \code{'p'} to directly use the permutation p-values.}

\item{...}{Other arguments, which will be ignored (the ellipsis is provided for consistency with the generic plot() method).}
}
\value{
A ggplot2 object.
}
\description{
Create a heatmap of the results of cluster-based permutation testing.
}
