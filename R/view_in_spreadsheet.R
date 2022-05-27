#' Helper function to view a dataset with default spreadsheet
#'
#' View a dataset with default spreadsheet, taken and slightly adapted from:
#' https://twitter.com/brodriguesco/status/1447468259725434886?s=20
#'
#' @param .data a dataset
#' @return nothing
#' @export
#' @examples
#' mtcars |>
#' view_in_spreadsheet()
#'
#' library(magrittr)
#' mtcars %>%
#' view_in_spreadsheet()
#'

view_in_spreadsheet <- function(.data) {

  if (interactive()) {
    tmp <- tempfile(fileext = ".csv")
    readr::write_excel_csv(.data, tmp)
    fs::file_show(tmp)
    }

  invisible(.data) # for eventually continue with piping
}
