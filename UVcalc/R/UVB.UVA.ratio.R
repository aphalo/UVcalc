UVB.UVA.ratio <-
function(wavelengths, spectral.e.irrad){
  return(UVB.q.dose(wavelengths, spectral.e.irrad)/UVA.q.dose(wavelengths, spectral.e.irrad))
}

