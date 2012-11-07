\name{generic.dose}
\alias{generic.dose}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Generic function for calculating doses
%%  ~~function to do ... ~~
}
\description{
A function to calculate doses or integrated doses from a radiation spectrum, the wavelengths
at which the radiation was measured, and a BSWFs as an array of values at the same 
wavelengths.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
generic.dose(action.f, wavelengths, spectral.e.irrad)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{action.f}{
  \code{action.f} is a numerical array giving an action spectrum to be used as a BSWF.
%%     ~~Describe \code{action.f} here~~
}
  \item{wavelengths}{
  \code{wavelengths} is a numerical array giving the wavelengths at which the multiplier
  should be calculated. Values in this array should be in strictly increasing
  order, but the step can vary along the array. Wavelengths should be expressed in nanometres (nm).%%
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
Depending on the value of \code{action.f} the returned numerical value is an integrated energy irradiance or an integrated energy irradiance
for a certain band (range of wavelengths). The units will depend on the conversion factor, or lack
of it, implicit in \code{action.f} and the units of \code{spectral.e.irrad} argument except for the "nm-2" as values are integrated over wavelengths. 
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
function(action.f, wavelengths, spectral.e.irrad){
# sanity check for wavelengths
    if (is.unsorted(wavelengths, strictly=TRUE)) {
      print("Error: wavelengths should be sorted in ascending order")
      return(NA)
    }
    if (length(wavelengths) != length(spectral.e.irrad)){
      print("Error: wavelengths vector and spectral.e.irrad vector should have same length")
      return(NA)
    }
    weighted.spectral.e.irrad <- action.f(wavelengths) * spectral.e.irrad
    # this should be improved to better handle the ends of BWSFs when wavelength step is large.
    integrated.dose <- 0.0
    for (i in 1:(length(wavelengths)-1)){
      integrated.dose <- integrated.dose +
        ((weighted.spectral.e.irrad[i] +
        weighted.spectral.e.irrad[i+1]) / 2 * 
        (wavelengths[i+1]-wavelengths[i]))
    }
    return(integrated.dose)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
