PAR.e <-
function(wavelengths){
  PAR.energy <- numeric(length(wavelengths))
  PAR.energy[wavelengths<400 | wavelengths>700] <- 0.0
  PAR.energy[wavelengths>=400 & wavelengths<=700] <- 1.0
  return(PAR.energy)
}

