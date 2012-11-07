UVR8.Abs <-
  function(wavelengths){
    UVR8.Absorbance300 <- numeric(length(wavelengths))
    UVR8.Absorbance300[wavelengths <= 323] <- 
      spline(UVR8.raw.data$wavelength,UVR8.raw.data$absorbance,
             xout=wavelengths[wavelengths <= 323])$y
    UVR8.Absorbance300[wavelengths > 323] <- 0.0
    return(UVR8.Absorbance300)
  }
