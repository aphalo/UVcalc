\name{jok.data}
\alias{jok.data}
\docType{data}
\title{Example solar spectrum
%%   ~~ data name/kind ... ~~
}
\description{
A simulated dayligth spectrum for Jokioinen (Finland), for 21 May, clear sky and
normal ozone concentration.
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(jok.data)}
\format{
  A data frame with 508 observations on the following 2 variables.
  \describe{
    \item{\code{w}}{a numeric vector of wavelengths in Angstrom}
    \item{\code{s.e.irrad}}{a numeric vector of daily spectral energy irradiances in J d-1 m-2 nm-1}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
Anders Lindfors
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
Kotilainen T, Lindfors A, Tegelberg R, Aphalo PJ (2011) How realistically does outdoor uv-b
supplementation with lamps reflect ozone depletion: An assessment of enhancement errors.
Photochemistry and Photobiology 87:174-183, DOI 10.1111/j.1751-1097.2010.00843.x, URL
http://onlinelibrary.wiley.com/doi/10.1111/j.1751-1097.2010.
00843.x/pdf
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(jok.data)
plot(s.e.irrad ~ w, data=jok.data)
}
\keyword{datasets}
