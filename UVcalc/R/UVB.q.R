UVB.q <-
function(wavelengths){
  hprime <- 3.990e-10 # J s / mol
  c <- 2.99792458e8 # m / s
  UVB.quantum <- UVB.e(wavelengths) / ( hprime * c / (wavelengths * 1e-9))  # um / m
  return(UVB.quantum)
}

