GEN.G.q <-
function(wavelengths){
    GEN_G.quantum <- numeric(length(wavelengths))
    GEN_G.quantum[wavelengths <= 313.3] <- 
      2.618 * (1.0 - (wavelengths[wavelengths <= 313.3] /
      313.3)^2) * exp((300 - wavelengths[wavelengths <= 313.3]) / 31.08)
    GEN_G.quantum[wavelengths > 313.3] <- 0.0
    GEN_G.quantum300 <- GEN_G.quantum /
      (2.618 * (1.0 - (300 / 313.3)^2))  # divisor is action at 300 nm
    return(GEN_G.quantum300)
}

