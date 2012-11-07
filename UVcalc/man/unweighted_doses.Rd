\name{Unweighted doses}
\alias{PAR.e.dose}
\alias{PAR.q.dose}
\alias{PPFD}
\alias{UVA.e.dose}
\alias{UVA.q.dose}
\alias{UVB.e.dose}
\alias{UVB.q.dose}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Functions to calculate unweighted doses for different bands of the spectrum.
%%  ~~function to do ... ~~
}
\description{
Functions to calculate unweighted doses for different bands of the spectrum.
Functions to generate conversion factors from spectral energy irradiances to
spectral photon irradiances are also provided.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
PAR.e.dose(wavelengths, spectral.e.irrad)

PAR.q.dose(wavelengths, spectral.e.irrad)

PPFD(wavelengths, spectral.e.irrad)

UVA.e.dose(wavelengths, spectral.e.irrad)

UVA.q.dose(wavelengths, spectral.e.irrad)

UVB.e.dose(wavelengths, spectral.e.irrad)

UVB.q.dose(wavelengths, spectral.e.irrad)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{wavelengths}{
  \code{wavelengths} is a numerical array giving the wavelengths for each value of spectral energy
  irradiance values in \code{spectral.e.irrad}. Values in this array should be in strictly increasing
  order, but the step can vary along the array. Wavelengths should be expressed in nanometres (nm).
%%     ~~Describe \code{wavelengths} here~~
}
  \item{spectral.e.irrad}{
  \code{spectral.e.irrad} is a numerical array of spectral energy irradiance values, either instantaneous or daily integrals. Spectral energy irradiance should be expressed in W m-2 nm-1 (instantaneous), or kJ d-1 m-2 nm-1 (daily sum). 
%%     ~~Describe \code{spectral.e.irrad} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
For the "XXX.e.dose" funtions the returned numerical value is an integrated energy irradiance 
for a certain band (range of wavelengths) in the same units as the 
\code{spectral.e.irrad} argument except for the "nm-2". 

For the "XXX.q.dose" functions the returned numerical value gives an integrated photon (=quantum)
irradiance for a certain band of the spectrum in units of mol m-2 s-1 if the
\code{spectral.e.irrad} argument is in W m-2.

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
\code{\link[UVcalc]{weighted_doses}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# load example data
data(jok.data)

# unweighted UV-A photon irradiance
UVA.q.dose(jok.data$w/10, jok.data$s.e.irrad)

# unweighted UV-A energy irradiance
UVA.q.dose(jok.data$w/10, jok.data$s.e.irrad)

# two ways of calculating PPFD
PAR.q.dose(jok.data$w/10, jok.data$s.e.irrad)
PPFD(jok.data$w/10, jok.data$s.e.irrad)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
