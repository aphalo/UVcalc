UVA.PAR.ratio <-
function(wavelengths, spectral.e.irrad){
  return(UVA.q.dose(wavelengths, spectral.e.irrad)/PAR.q.dose(wavelengths, spectral.e.irrad))
}

