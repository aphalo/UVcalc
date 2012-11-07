UVB.e <-
function(wavelengths){
  UVB.energy <- numeric(length(wavelengths))
  UVB.energy[wavelengths<280 | wavelengths>315] <- 0.0
  UVB.energy[wavelengths>=280 & wavelengths<=315] <- 1.0
  return(UVB.energy)
}

