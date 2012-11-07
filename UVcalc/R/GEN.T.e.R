GEN.T.e <-
function(wavelengths){
    GEN_T.energy300 <- GEN.T.q(wavelengths) * wavelengths / 300
    return(GEN_T.energy300)
}

