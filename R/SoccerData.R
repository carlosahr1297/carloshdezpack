#' Soccer Data from sportsdata.io
#'
#' @format 6 x 730
#'
#' \describe{
#' \item{index}{Name}
#' \item{column 1}{Team}
#' \item{column 2}{Minutes}
#' \item{column 3}{FantasyPoints}
#' \item{column 4}{Goals}
#' \item{column 5}{Shots}
#'}
#'
"SoccerData"


SoccerData = read.csv("SoccerData.csv")

usethis::use_data(SoccerData,overwrite = TRUE)
