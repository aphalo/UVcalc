DNA.N.e <-
function(wavelengths){
    SETLOW_TUV.energy300 <- DNA.N.q(wavelengths) * wavelengths / 300
    return(SETLOW_TUV.energy300)
}

