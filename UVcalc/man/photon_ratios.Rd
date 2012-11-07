\name{Photon ratios}
\alias{UVA.PAR.ratio}
\alias{UVB.PAR.ratio}
\alias{UVB.UVA.ratio}
\alias{R.FR.ratio}
\alias{B.G.ratio}
\alias{B.R.ratio}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{Functions to calculate photon ratios
%%  ~~function to do ... ~~
}
\description{
These functions can be used to calculate photon ratios between different
spectral bands from measured energy irradiance spectra.
}
\usage{
UVA.PAR.ratio(wavelengths, spectral.e.irrad)

UVB.PAR.ratio(wavelengths, spectral.e.irrad)

UVB.UVA.ratio(wavelengths, spectral.e.irrad)

R.FR.ratio(wavelengths, spectral.e.irrad)

B.G.ratio(wavelengths, spectral.e.irrad)

B.R.ratio(wavelengths, spectral.e.irrad)
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
For UV-B and UV-A we follow the CIE standard, and define the limits at 280 nm, 315 nm and 400 nm.
For PAR we follow the most frequent definition and set the limits at 400 nm and 700 nm.
For red and far-red when calculating their ratio we use the most frequent definition and set the limits at 650 nm and 670 nm, and 720 nm and 740 nm, respectively. For blue and green light when calculating the ratio, we use the limits 420 nm and 490 nm, and 500 nm and 570 nm, respectively.
When calculating the blue : red photon ratio we use the limits 420 nm and 490 nm, and 620 nm to 680 nm, respectively. 
%%  ~~ If necessary, more details than the description above ~~
}
\value{
The returned numerical value is a unitless ratio between two integrated and unweighted photon irradiances.
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(jok.data)
UVB.PAR.ratio(jok.data$w/10, jok.data$s.e.irrad)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
