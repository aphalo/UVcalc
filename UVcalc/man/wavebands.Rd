\name{Wavebands}
\alias{PAR.e}
\alias{PAR.q}
\alias{UVA.e}
\alias{UVA.q}
\alias{UVB.e}
\alias{UVB.q}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Functions to create "pseudo action spectra"
%%  ~~function to do ... ~~
}
\description{
Functions to create "pseudo action spectra" of multiplier factors to select wavebands (XXX.e) 
or to in addition convert radiation spectra expressed in spectral energy irradience to
photon (=quantum) irradiance (from W m-2 nm-1 to mol m-2 s-1).
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
PAR.e(wavelengths)

PAR.q(wavelengths)

UVA.e(wavelengths)

UVA.q(wavelengths)

UVB.e(wavelengths)

UVB.q(wavelengths)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{wavelengths}{
  \code{wavelengths} is a numerical array giving the wavelengths at which the multiplier
  should be calculated. Values in this array should be in strictly increasing
  order, but the step can vary along the array. Wavelengths should be expressed in nanometres (nm).%%     ~~Describe \code{wavelengths} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A numerical array with one multiplier value for each wavelength in the \code{wavelengths} argument.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Pedro J. Aphalo
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
PAR.q(300:900)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
