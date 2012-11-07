DNA.GM.e <-
function(wavelengths){
    SETLOW_TUV.energy300 <- DNA.GM.q(wavelengths) * wavelengths / 300
    return(SETLOW_TUV.energy300)
}

