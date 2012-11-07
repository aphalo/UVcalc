B.R.ratio <-
function(wavelengths, spectral.e.irrad){
  blue.band <- function(wavelengths) return(generic.band.q(wavelengths,420,490))
  red.band <- function(wavelengths) return(generic.band.q(wavelengths,620,680))
  return(generic.dose(blue.band,wavelengths, spectral.e.irrad)/
   generic.dose(red.band, wavelengths, spectral.e.irrad))  
}

