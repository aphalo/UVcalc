DNA.GM.q <-
function(wavelengths){
    SETLOW_GM.quantum300 <- numeric(length(wavelengths))
    SETLOW_GM.quantum300 <- exp(13.82*(1/(1+exp((wavelengths-310)/9))-1))*30.675
    return(SETLOW_GM.quantum300)
}

