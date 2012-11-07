R.FR.ratio <-
function(wavelengths, spectral.e.irrad){
  red.band <- function(wavelengths) return(generic.band.q(wavelengths,650,670))
  far.red.band <- function(wavelengths) return(generic.band.q(wavelengths,720,740))
  return(generic.dose(red.band,wavelengths, spectral.e.irrad)/
   generic.dose(far.red.band, wavelengths, spectral.e.irrad))
}

