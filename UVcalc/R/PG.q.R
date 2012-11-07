PG.q <-
function(wavelengths){
    PG.quantum300 <- numeric(length(wavelengths))
    PG.quantum300[wavelengths<=390] <- 
      exp(4.688272*exp(-exp(0.1703411*(wavelengths[wavelengths<=390]-307.867)/1.15)) +
      ((390-wavelengths[wavelengths<=390])/121.7557-4.183832))
    PG.quantum300[wavelengths > 390] <- 0
    return(PG.quantum300)
}

