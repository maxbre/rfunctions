% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/temp_convert.R
\name{C_convert}
\alias{C_convert}
\title{Temperature conversion from Celsius degrees °C to ...}
\usage{
C_convert(deg = 0, to = "K")
}
\arguments{
\item{deg}{a numeric vector of Celsius degrees}

\item{to}{an user input string for the conversion: "K" for Kelvin (default), "F" for Fahrenheit degrees}
}
\value{
a numeric vector of the converted temperature degrees
}
\description{
Conversion utility function
}
\examples{
C_convert(0, "K")
C_convert(1, "F")
}
