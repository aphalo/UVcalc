\name{Weighted doses}
\alias{CIE.dose}
\alias{CIE300.dose}
\alias{DNA.N.dose}
\alias{DNA.P.dose}
\alias{DNA.P290.dose}
\alias{GEN.G.dose}
\alias{GEN.T.dose}
\alias{PG.dose}
\alias{UVR8.Abs.dose}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{Functions to calculate effective irradiances
%%  ~~function to do ... ~~
}
\description{
These functions can be used to calculate biologically effective UV doses
from measured energy irradiance spectra. Each function uses a different
action spectrum as a BSWF, or in some cases, normalization of the BSWF
to one at different wavelengths.
}
\usage{
CIE.dose(wavelengths, spectral.e.irrad)

CIE300.dose(wavelengths, spectral.e.irrad)

DNA.N.dose(wavelengths, spectral.e.irrad)

DNA.P.dose(wavelengths, spectral.e.irrad)

DNA.P290.dose(wavelengths, spectral.e.irrad)

GEN.G.dose(wavelengths, spectral.e.irrad)

GEN.T.dose(wavelengths, spectral.e.irrad)

PG.dose(wavelengths, spectral.e.irrad)

UVR8.Abs.dose(wavelengths, spectral.e.irrad)

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
The returned numerical value is an integrated and weighted dose in the same units as the 
\code{spectral.e.irrad} argument except for the "nm-2".
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
}
\note{
These functions are described in XXXXXX
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[UVcalc]{unweighted_doses}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# load some example data
data(jok.data)
# calculate the biologically effective dose according
# to Green's formulation of Caldwell's GPAS
GEN.G.dose(jok.data$w/10, jok.data$s.e.irrad)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
