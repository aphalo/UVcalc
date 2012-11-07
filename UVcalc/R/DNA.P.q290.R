DNA.P.q290 <-
function(wavelengths){
    QUAITE_MUSIL.quantum290 <- numeric(length(wavelengths))
    QUAITE_MUSIL.quantum290[wavelengths<=320] <- 
      22.657e-3 * 7.98e-16 * exp(1.118e4/wavelengths[wavelengths<=320])
    QUAITE_MUSIL.quantum290[wavelengths > 320] <- 0
    return(QUAITE_MUSIL.quantum290)
}

