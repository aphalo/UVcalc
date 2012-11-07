B.G.ratio <-
function(wavelengths, spectral.e.irrad){
  blue.band <- function(wavelengths) return(generic.band.q(wavelengths,420,490))
  green.band <- function(wavelengths) return(generic.band.q(wavelengths,500,570))
  return(generic.dose(blue.band,wavelengths, spectral.e.irrad)/
   generic.dose(green.band, wavelengths, spectral.e.irrad))  
}
