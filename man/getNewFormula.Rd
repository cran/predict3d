% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggPredict.R
\name{getNewFormula}
\alias{getNewFormula}
\title{Make new formula}
\usage{
getNewFormula(fit, predictors = NULL)
}
\arguments{
\item{fit}{An object of class lm or glm}

\item{predictors}{Names of variables to exclude}
}
\description{
Make new formula
}
\examples{
fit=lm(mpg~factor(cyl)*factor(am)+wt+carb,data=mtcars)
getNewFormula(fit,predictors=c("cyl","wt"))
fit=lm(Sepal.Length~Sepal.Width*Petal.Length+Species,data=iris)
getNewFormula(fit,predictors=c("Petal.Length"))
fit=lm(mpg~hp*wt*factor(cyl),data=mtcars)
getNewFormula(fit,predictors=c("hp","cyl"))
fit=loess(mpg~hp*wt,data=mtcars)
getNewFormula(fit,predictors=c("hp","wt"))
}
