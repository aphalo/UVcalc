GEN.T.q <-
function(wavelengths){
    GEN_T.quantum300 <- numeric(length(wavelengths))
    GEN_T.quantum300[wavelengths <= 345] <- 
      exp(-(((265-wavelengths[wavelengths <= 345])/21)^2))/0.06217653
    GEN_T.quantum300[wavelengths > 345] <- 0.0
    return(GEN_T.quantum300)
}

