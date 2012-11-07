\name{Generic band}
\alias{generic.band.e}
\alias{generic.band.q}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Generic function for calculating pseudo SWFs for selecting wavebands
%%  ~~function to do ... ~~
}
\description{
Generic function for calculating pseudo SWFs for selecting wavebands. "e" function simply
selects a range of values, and "q" function in addition calculates the conversion factor
at each wavelength for converting energy spectral irradiances into photon spectral
irradiances.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
generic.band.e(wavelengths, min, max)

generic.band.q(wavelengths, min, max)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{wavelengths}{
  \code{wavelengths} is a numerical array giving the wavelengths at which the multiplier
  should be calculated. Values in this array should be in strictly increasing
  order, but the step can vary along the array. Wavelengths should be expressed in nanometres (nm).%%
%%     ~~Describe \code{wavelengths} here~~
}
  \item{min}{
  \code{min} is a numerical value giving the shortest wavelength to be selected.
%%     ~~Describe \code{action.f} here~~
}
  \item{max}{
  \code{max} is a numerical value giving the longest wavelength to be selected.
%%     ~~Describe \code{action.f} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
The value returned is a numerical vector of multipliers to be applied to a vector of spectral
energy irradiances. 
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
generic.band.e(250:800,400,700)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
