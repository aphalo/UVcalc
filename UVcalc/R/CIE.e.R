CIE.e <-
function(wavelengths){
    CIE.energy <- numeric(length(wavelengths))
    CIE.energy[wavelengths <= 298] <- 1
    CIE.energy[(wavelengths > 298) & (wavelengths <= 328)] <- 
      10^(0.094*(298-wavelengths[(wavelengths > 298) & (wavelengths <= 328)]))
    CIE.energy[(wavelengths > 328) & (wavelengths <= 400)] <-
      10^(0.015*(139-wavelengths[(wavelengths > 328) & (wavelengths <= 400)]))
    CIE.energy[wavelengths > 400] <- 0
    return(CIE.energy)
}

