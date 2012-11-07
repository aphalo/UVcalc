UVA.e <-
function(wavelengths){
  UVA.energy <- numeric(length(wavelengths))
  UVA.energy[wavelengths<315 | wavelengths>400] <- 0.0
  UVA.energy[wavelengths>=315 & wavelengths<=400] <- 1.0
  return(UVA.energy)
}

