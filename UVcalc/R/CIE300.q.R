CIE300.q <-
function(wavelengths){
    CIE.quantum300 <- CIE300.e(wavelengths) * 300 / wavelengths
    return(CIE.quantum300)
}

