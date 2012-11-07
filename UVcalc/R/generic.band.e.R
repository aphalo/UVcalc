generic.band.e <-
function(wavelengths,min,max){
  band.energy <- numeric(length(wavelengths))
  band.energy[wavelengths<min | wavelengths>max] <- 0.0
  band.energy[wavelengths>=min & wavelengths<=max] <- 1.0
  return(band.energy)
}

