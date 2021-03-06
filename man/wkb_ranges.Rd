% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ranges.R
\name{wkb_ranges}
\alias{wkb_ranges}
\alias{wkt_ranges}
\alias{wksxp_ranges}
\alias{wkb_feature_ranges}
\alias{wkt_feature_ranges}
\alias{wksxp_feature_ranges}
\title{Extract ranges information}
\usage{
wkb_ranges(wkb, na.rm = FALSE, finite = FALSE)

wkt_ranges(wkt, na.rm = FALSE, finite = FALSE)

wksxp_ranges(wksxp, na.rm = FALSE, finite = FALSE)

wkb_feature_ranges(wkb, na.rm = FALSE, finite = FALSE)

wkt_feature_ranges(wkt, na.rm = FALSE, finite = FALSE)

wksxp_feature_ranges(wksxp, na.rm = FALSE, finite = FALSE)
}
\arguments{
\item{wkb}{A \code{list()} of \code{\link[=raw]{raw()}} vectors, such as that
returned by \code{sf::st_as_binary()}.}

\item{na.rm}{Pass \code{TRUE} to not consider missing (nan) values}

\item{finite}{Pass \code{TRUE} to only consider finite
(non-missing, non-infinite) values.}

\item{wkt}{A character vector containing well-known text.}

\item{wksxp}{A \code{list()} of classed objects}
}
\value{
A data.frame with columns:
\itemize{
\item \code{xmin}, \code{ymin}, \code{zmin}, and \code{mmin}: Minimum coordinate values
\item \code{xmax}, \code{ymax}, \code{zmax}, and \code{mmax}: Maximum coordinate values
}
}
\description{
This is intended to behave the same as \code{\link[=range]{range()}}, returning the
minimum and maximum x, y, z, and m coordinate values.
}
\examples{
wkt_ranges("POINT (30 10)")

}
