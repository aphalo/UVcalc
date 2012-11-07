PG.e <-
function(wavelengths){
    PG.energy300 <- PG.q(wavelengths) * wavelengths / 300
    return(PG.energy300)
}

