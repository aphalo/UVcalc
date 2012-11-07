GEN.G.e <-
function(wavelengths){
    GEN_G.energy300 <- GEN.G.q(wavelengths) * wavelengths / 300
    return(GEN_G.energy300)
}

