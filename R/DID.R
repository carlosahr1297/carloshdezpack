#' Differences in Differences (DID) Function
#'
#' @description This function is meant to conduct the process for running a
#' Difference in Differences regression model. It takes 5 parameters and will return the summary
#' of the DID regression.
#'
#' @param dv dependent variable
#' @param time the variable that will be converted to time dummy variable in the function
#' @param yr the condition for the time dummy variable to be created. Should be a year
#' or time period
#' @param treat the group that is being treated. This is a variable that will be converted to a
#' dummy variable in the function
#' @param h the condition for the treatment dummy variable to be created
#'
#' @return
#' @export
#'
#' @examples
#' DID(dependent var, timeVariable, yr, treat, h)



DID <- function(dv,time,yr,treat,h){
  timeDV = ifelse(time >= yr, 1, 0)

  treatedDV = ifelse(treat == h, 1, 0) #group exposed

  did = timeDV*treatedDV #difference in difference estimator
  df = data.frame(time,treat,timeDV,treatedDV,did,dv)
  model = lm(dv~timeDV+treatedDV+did, data=df)
  summary(model)
}
