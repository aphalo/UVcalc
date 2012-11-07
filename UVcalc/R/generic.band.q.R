generic.band.q <-
function(wavelengths,min,max){
  hprime <- 3.990e-10 # J s / mol
  c <- 2.99792458e8 # m / s
  multipliers <- generic.band.e(wavelengths,min,max) / ( hprime * c / (wavelengths * 1e-9))  # nm / m
  return(multipliers)
}

