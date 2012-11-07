UVB.PAR.ratio <-
function(wavelengths, spectral.e.irrad){
  return(UVB.q.dose(wavelengths, spectral.e.irrad)/PAR.q.dose(wavelengths, spectral.e.irrad))
}

