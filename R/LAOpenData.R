#' LA Open Data for Energy and Water use by Building
#'
#' @format 9 columns, over 9000 observations
#'
#' \describe{
#' \item{index}{Building Address}
#' \item{column 1}{Building Category by Sqft}
#' \item{column 2}{Building Floor Area}
#' \item{column 3}{CO2 Emission in Metric Tons}
#' \item{column 4}{Compliance Status}
#' \item{column 5}{Energy Star Score}
#' \item{column 6}{source Energy Use Intensity (EUI) kbtu/sqft}
#' \item{column 7}{weather normalized source EUI}
#' \item{column 8}{Total water use in kgallons}
#'}
#'
"LAOpenData"

LAOpenData = read.csv("opendata.csv")

usethis::use_data(LAOpenData,overwrite = TRUE)
