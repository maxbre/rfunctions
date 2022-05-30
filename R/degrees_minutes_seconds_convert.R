#' From degrees minutes seconds to decimal degrees
#'
#' Convert degrees minutes seconds to decimal degrees
#'
#' @param s vector of characters in the form "degrees minutes seconds" separated by a blank space
#' @return  numeric vector in decimal degrees
#' @export
#' @examples
#' myangle<- "45  12    3.01"
#' dms_to_dd(myangle)

dms_to_dd <- function(s) {

  x <- do.call(rbind, strsplit(s, split='\\s+'))
  #x <- do.call(rbind, strsplit(se, split="[[:space:]]+"))

  x <- apply(x, 1, function(y) {

    y <- as.numeric(y)

    y[1] + y[2]/60 + y[3]/3600

    })

  x
}

#' From decimal degrees to degrees minutes seconds
#'
#' Convert degrees minutes seconds to decimal degrees
#'
#' @param dd vector of numbers  decimal degrees
#' @return string vector of degrees minutes seconds
#' @export
#' @examples
#' myangle<- 45.15
#' dd_to_dms(myangle)

dd_to_dms <- function(dd) {

  deg <- as.integer(dd)
  min_ <- 60*(dd - deg)
  min <- as.integer(min_)
  sec_ <- 60*(min_ - min)

  dms<-paste(deg, min, sec_, sep =" ")

  dms

}
