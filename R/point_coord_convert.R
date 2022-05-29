#' Point coordinates convert
#'
#' Convert coordinates of a given point from one CRS to another by setting EPSG codes
#'
#' @param x a number corresponding to x/lon coordinates of the point
#' @param y a number corresponding to y/lat coordinate of the point
#' @param epsg_in a number corresponding to EPSG code of initial CRS of the point, default from UTM32
#' @param epsg_out a number corresponding to EPSG code of converted CRS of the point, default to WGS84
#' @return dataframe of converted x/lon and y/lat coordinates of the point
#' @export
#' @examples
#' point_coord_convert(738239.9, 5073656)
#' point_coord_convert(738239.9, 5073656, epsg_in = 32632, epsg_out = 32633)
#'

point_coord_convert <- function(x, y, epsg_in = 32632, epsg_out = 4326){

  # reference
  # https://stackoverflow.com/questions/30018098/how-to-convert-utm-coordinates-to-lat-and-long-in-r

  # point
  p <- cbind(x, y)

  # compose crs string for epsg_in
  epsg_in <- paste0('EPSG:', epsg_in)

  # create SpatVector
  v <- terra::vect(p, crs = epsg_in)

  # compose crs string for epsg_in
  epsg_out <- paste0('EPSG:', epsg_out)

  # project vector
  vp <- terra::project(v, y=epsg_out)

  # get new coordinates
  vp_coord <- terra::geom(vp)[, c('x', 'y')]

  # get results as df
  data.frame(as.list(vp_coord), crs_epsg = epsg_out)

  }

