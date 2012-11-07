\name{UVcalc-package}
\alias{UVcalc-package}
\alias{UVcalc}
\docType{package}
\title{
Functions for calculating irradiances from spectral irradiances
}
\description{
This package provides functions for calculating irradiances or doses, both unweighted
and weighted with BSWFs (biological spectral weighting functions). Functions
are also provided for calculating the BSWFs commonly used in research on the effects of
ultraviolet radiation on plants.
}
\details{
\tabular{ll}{
Package: \tab UVcalc\cr
Type: \tab Package\cr
Version: \tab 1.0.4\cr
Date: \tab 2012-05-04\cr
License: \tab GPL-3\cr
LazyLoad: \tab yes\cr
}
This package provides a basic set of functions for calculating UV and vis1ble radiation doses from
spectra in units of spectral energy irradiance or or daily cummulated spectral energy irradiance.
The included functions are for the BSWFs (biological spectral weighting functions) most
frequently used in research with plants and vegetation. However, building blocks and examples
are included to facilitate the programming of functions for other BSWFs.

The names of the functions are based on abbreviations describing the BSWF: CIE (erythemal according
to the CIE standard of 1998), GEN.G (Green's formulation of Caldwel's GPAS), GEN.T (Thimijan's formulation of Caldwel's GPAS), DNA.N (Setlow's 'naked' DNA damage spectrum, interpolated from
tabulated values digitized from the original publication, as used in the TUV program), DNA.GM (The seldom 
used formulation of Setlow's DNA spectrum by Green and Miller'), DNA.P (The DNA damage in plants (alfalfa), by Quaite as formulated by Musil), PG (The plant growth action spectrum by Flint and 
Caldwell as formulated in the original publication by these authors).

Most action spectra are normalized to the most frequently used wavelength in the literature, in some cases other normalizations
are also provided, and indicated by a three digit number in the function name, giving the normalization wavelength in nm.

The function names contain in addition an "e" for energy or a "q" for quantum (=photon) units.

Functions are included also for calculating unweighted irradiances for selected wavebands of the
spectrum, and for calculating photon ratios between some of the bands.

The current version of the package accepts as input only spectra in spectral energy irradiance units. A conversion function from spectral photon irradiance to spectral energy irradiance will be added in the future.
}
\author{
Pedro J. Aphalo

Maintainer: Pedro J. Aphalo <pedro.aphalo@helsinki.fi>
}
\references{
Bjoern LO, Teramura AH (1993) Simulation of daylight ultraviolet radiation and effects of ozone
depletion. In: Young AR, Bjoern LO, Moan J, Nultsch W (eds) Environmental UV Photobiology,
Plenum Press, New York, pp 41-71

Caldwell MM (1971) Solar UV irradiation and the growth and development of higher plants. In:
Giese AC (ed) Photophysiology, vol 6, Academic Press, New York, pp 131-177

Flint SD, Caldwell MM (2003) A biological spectral weighting function for ozone depletion re-
search with higher plants. Physiologia Plantarum 117(1):137-144

Green AES, Miller JH (1975) Measures of biologically active radiation in the 280-340 nm region.
impacts of climate change on the environment. No. 5, Part 1 in CIAP Monograph, chap 2.2.4

Green AES, Sawada T, Shettle EP (1974) The middle ultraviolet reaching the ground. Photochemistry and Photobiology 19:251-259

McKinlay AF, Diffey BL (1987) A reference action spectrum for ultraviolet induced erythema in
human skin. CIE Journal 6:17-22

Musil CF (1995) Differential effects of elevated ultraviolet-B
radiation on the photochemical and reproductive performances of
dicotyledonous and monocotyledonous arid-environment ephemerals.
Plant Cell Environ. 18, 844-854.

Quaite FE, Sutherland BM and Sutherland JC (1992)
Action spectrum for DNA damage in alfalfa lowers predicted
impact of ozone depletion. Nature 358, 576-578.

Setlow RB (1974) The wavelengths in sunlight effective in producing skin cancer: a theoretical
analysis. Proc Natl Acad Sci U S A 71(9):3363-3366

Thimijan RW, Carns HR, Campbell LE (1978) Final report (EPA-IAG-D6-0168): Radiation
sources and related environmental control for biological and climatic effects UV research
(BACER). Tech. rep., Environmental Protection Agency, Washington, DC

Webb AR, Slaper H, Koepke P, Schmalwieser AW (2011) Know your standard: clarifying the cie
erythema action spectrum. Photochem Photobiol 87(2):483-486, 
DOI 10.1111/j.1751-1097.2010.00871.x, URL http://dx.doi.org/10.1111/j.1751-1097.2010.00871.
x
}
%~~ Optionally other standard keywords, one per line, from file KEYWORDS in the R documentation ~~
%~~ directory ~~
\keyword{ package }
\seealso{
\code{\link[UVcalc]{photon_ratios}}, \code{\link[UVcalc]{unweighted_doses}}, and \code{\link[UVcalc]{weighted_doses}}
}
\examples{
## ~~ simple examples of the most important functions ~~
data(jok.data)
attach(jok.data)
PPFD(w, s.e.irrad)
GEN.G.dose(w, s.e.irrad)
UVB.PAR.ratio(w, s.e.irrad)
GEN.G.e(w)
detach(jok.data)
}
