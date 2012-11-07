DNA.P.q <-
function(wavelengths){
#    QUAITE_MUSIL.quantum290 <- numeric(length(wavelengths))
#   QUAITE_MUSIL.quantum290[wavelengths<=320] <- 
#      22.657e-3*7.98e-16*exp(1.118e4/wavelengths[wavelengths<=320])
#    QUAITE_MUSIL.quantum290[wavelengths > 320] <- 0
    action.at.300 <- 22.657e-3 * 7.98e-16 * exp(1.118e4/300)
    return(DNA.P.q290(wavelengths) / action.at.300)
}

