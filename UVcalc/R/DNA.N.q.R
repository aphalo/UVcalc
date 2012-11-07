DNA.N.q <-
function(wavelengths){
    SETLOW_TUV.quantum300 <- numeric(length(wavelengths))
    SETLOW_TUV.quantum300[wavelengths <= 364] <- 
      spline(SETLOW.raw.data$Wavelength,SETLOW.raw.data$SETLOW74,
      xout=wavelengths[wavelengths <= 364])$y
    SETLOW_TUV.quantum300[wavelengths > 364] <- 0.0
    return(SETLOW_TUV.quantum300)
}

