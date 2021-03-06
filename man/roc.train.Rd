% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/roc.train.R
\name{roc.train}
\alias{roc.train}
\title{Caret ROC}
\usage{
\method{roc}{train}(fit, outcome, ...)
}
\arguments{
\item{fit}{caret model fit}

\item{outcome}{string; outcome label}

\item{...}{additional arguments passed to \code{\link[pROC]{roc}}}
}
\value{
An object of class 'roc'
}
\description{
Create ROC object directly from a caret model
}
\details{
This returns an 'roc' object. Which you probably want to then pass to
\code{\link[pROC]{plot}}.
}
\examples{
data(aSAH)
  ctrl <- trainControl( classProb=TRUE, savePrediction=TRUE )
  fit <- train(
               outcome ~ gender + age + s100b + ndka, data=aSAH, method="rf"
               , trControl = ctrl
              )

  roc.train(fit) \%>\% plot( print.auc=TRUE, grid=TRUE)
}
\seealso{
\code{\link[pROC]{roc}} \cr
  \code{\link[pROC]{plot}} \cr
}

