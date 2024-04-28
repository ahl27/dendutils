\name{labels<-}
\alias{labels<-}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
"label" assignment operator for dendrogram objects
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
\method{labels}{dendrogram}(object, ...) <- value
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{an object of class \code{\link{dendrogram}}
}
\item{...}{
(unused) Further arguments passed to internally called functions.
}
\item{value}{
  New labels to assign to \code{object}
}
}
\details{
Replaces the labels of \code{object} with \code{value}. Supports assigning to a subset of values.
}
\value{
None; modifies the labels of \code{object} in-place.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Aidan Lakshman \email{ahl27@pitt.edu}
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
dhc <- as.dendrogram(hc <- hclust(dist(USArrests), "ave"))
dhc21 <- dhc[[2]][[1]]
labels(dhc21)

# reassign all labels
labels(dhc21) <- LETTERS[seq_along(labels(dhc21))]
labels(dhc21)

# reassign a subset of labels
labels(dhc21)[c(1,3)] <- c("TestLabel1", "TestLabel2")
labels(dhc21)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
