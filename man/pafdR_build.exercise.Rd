% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pafdR_build_exercise.R
\name{pafdR_build.exercise}
\alias{pafdR_build.exercise}
\title{Builds exercises using package exams}
\usage{
pafdR_build.exercise(lan = "en", exercise.folder = "pafdR-exercises",
  pdf.folder = "pdf out")
}
\arguments{
\item{lan}{Language of exercises ('en' or 'pt-br')}

\item{exercise.folder}{Folder with exercise files (if not found, will download from github)}

\item{pdf.folder}{Folder to output pdf file and solutions}
}
\value{
TRUE, if sucessful
}
\description{
This function build a pdf file and a solution sheet from R exercises available at github.
}
\examples{

\dontrun{
pafdR_build.exercise()
}

}
