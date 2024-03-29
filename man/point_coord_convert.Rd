% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/point_coord_convert.R
\name{point_coord_convert}
\alias{point_coord_convert}
\title{Point coordinates convert}
\usage{
point_coord_convert(x, y, epsg_in = 32632, epsg_out = 4326)
}
\arguments{
\item{x}{a number corresponding to x/lon coordinates of the point}

\item{y}{a number corresponding to y/lat coordinate of the point}

\item{epsg_in}{a number corresponding to EPSG code of initial CRS of the point, default from UTM32}

\item{epsg_out}{a number corresponding to EPSG code of converted CRS of the point, default to WGS84}
}
\value{
dataframe of converted x/lon and y/lat coordinates of the point
}
\description{
Convert coordinates of a given point from one CRS to another by setting EPSG codes
}
\examples{
point_coord_convert(738239.9, 5073656)
point_coord_convert(738239.9, 5073656, epsg_in = 32632, epsg_out = 32633)

}
