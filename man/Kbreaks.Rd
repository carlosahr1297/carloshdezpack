% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Kbreaks.R
\name{Kbreaks}
\alias{Kbreaks}
\title{Histogram with K breaks}
\usage{
Kbreaks(variable, k = 1 + log2(n), n = length(variable))
}
\arguments{
\item{variable}{this is a quantitative variable. Categorical variable will not work}

\item{k}{number of breaks based on number of observations for variable. (you do not need to
specify this)}

\item{n}{length of variable. You do not need to enter this in function.}
}
\value{
hist(variable, breaks=k)
}
\description{
creates a histogram with K breaks for quantitative variables. The function has
3 parameters (1 variable and 2 fixed). You only have to specify the variable.
}
\examples{
Kbreaks(variable)
}
