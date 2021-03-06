% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filters.R
\name{wkt_set_srid}
\alias{wkt_set_srid}
\alias{wkb_set_srid}
\alias{wksxp_set_srid}
\alias{wkt_set_z}
\alias{wkb_set_z}
\alias{wksxp_set_z}
\alias{wkt_transform}
\alias{wkb_transform}
\alias{wksxp_transform}
\title{Modify well-known geometries}
\usage{
wkt_set_srid(wkt, srid, precision = 16, trim = TRUE)

wkb_set_srid(wkb, srid)

wksxp_set_srid(wksxp, srid)

wkt_set_z(wkt, z, precision = 16, trim = TRUE)

wkb_set_z(wkb, z)

wksxp_set_z(wksxp, z)

wkt_transform(wkt, trans, precision = 16, trim = TRUE)

wkb_transform(wkb, trans)

wksxp_transform(wksxp, trans)
}
\arguments{
\item{wkt}{A character vector containing well-known text.}

\item{srid}{An integer spatial reference identifier with a user-defined meaning.
Use \code{NA} to unset this value.}

\item{precision}{The rounding precision to use when writing
(number of decimal places).}

\item{trim}{Trim unnecessary zeroes in the output?}

\item{wkb}{A \code{list()} of \code{\link[=raw]{raw()}} vectors, such as that
returned by \code{sf::st_as_binary()}.}

\item{wksxp}{A \code{list()} of classed objects}

\item{z}{A Z value that will be assigned to every coordinate in each feature.
Use \code{NA} to unset this value.}

\item{trans}{A 3x3 transformation matrix that will be applied to all coordinates
in the input.}
}
\value{
An unclassed well-known vector with the same type
as the input.
}
\description{
Modify well-known geometries
}
\examples{
wkt_set_srid("POINT (30 10)", 1234)
wkt_set_z("POINT (30 10)", 1234)
wkt_transform(
  "POINT (0 0)",
  # translation +12 +13
  matrix(c(1, 0, 0, 0, 1, 0, 12, 13, 1), ncol = 3)
)

}
