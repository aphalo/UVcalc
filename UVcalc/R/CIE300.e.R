CIE300.e <-
function(wavelengths){
    # standardize to 1 at 300 nm
    CIE.energy300 <- CIE.e(wavelengths) /
      10^(0.094*(298-300))  # the divisor is CIE action at 300 nm
    return(CIE.energy300)
}

