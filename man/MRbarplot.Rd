% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MRbarplot.R
\name{MRbarplot}
\alias{MRbarplot}
\title{Plotting the result of the multiple comparison procedures}
\usage{
MRbarplot(x, MCP = "all", col = grDevices::heat.colors(10), horiz = FALSE, ...)
}
\arguments{
\item{x}{An object of the \code{MRtest} function}

\item{MCP}{Allows choosing the multiple comparison test.
The \emph{defaut} is "all". This option will perform all tests
available in the \code{MRtest} object.}

\item{col}{A specification for the plotting color.
The \emph{defaut} is \code{heat.colors(10)}.}

\item{horiz}{a logical value. If \code{FALSE}, the bars are drawn
vertically with the first bar to the left. If \code{TRUE},
the bars are drawn horizontally with the first at the bottom.}

\item{...}{Parameters of the \code{\link{barplot}} function}
}
\value{
\code{MRbarplot} return the bar plot of the tests chosen
    ("MGM", "MGR", "SNKM" and "TM")
    to evaluate the treatment means.
}
\description{
\code{MRbarplot} creates a bar plot with vertical or horizontal bars
    to compare the mean treatments by the tests:
    means grouping based on midrange, means grouping based on range,
    Student-Newman-Keuls and Tukey  based on midrange.
}
\details{
The \code{MCP} argument allows choosing several tests
    of multiple comparisons from the
    \code{MRtest} object. For plots in papers, use
    \code{col = gray.colors(10)}. For details, see
    \code{\link[grDevices]{colors}} function.
}
\examples{
# Simulated data (completely randomized design)

rv <- c(100.08, 105.66, 97.64, 100.11, 102.60, 121.29, 100.80,
        99.11, 104.43, 122.18, 119.49, 124.37, 123.19, 134.16,
        125.67, 128.88, 148.07, 134.27, 151.53, 127.31)

# Treatments
treat <- factor(rep(LETTERS[1:5], each = 4))

# Anova
res     <- aov(rv~treat)

# Loading the midrangeMCP package
library(midrangeMCP)

# Choosing tests
results <- MRtest(y = res, trt = "treat", alpha = 0.05,
                   main = "Multiple Comparison Procedures",
                   MCP = c("MGM", "TM"))

MRbarplot(results, MCP = "all") # It will be shown two
                             # graphs. First, for the
                             # results of \code{'MGM'}
                             # and the second for the
                             # results of \code{'TM'}.

MRbarplot(results, MCP = "MGM") # It will be shown
                                 # only the graph
                                 # for the result of
                                 # \code{'MGM'}

# Plot for papers
MRbarplot(results, MCP = "all", col = gray.colors(10))
}
