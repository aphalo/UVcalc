generic.dose <-
function(action.f, wavelengths, spectral.e.irrad){
# sanity check for wavelengths
    if (is.unsorted(wavelengths, strictly=TRUE)) {
      print("Error: wavelengths should be sorted in ascending order")
      return(NA)
    }
    if (length(wavelengths) != length(spectral.e.irrad)){
      print("Error: wavelengths vector and spectral.e.irrad vector should have same length")
      return(NA)
    }
    weighted.spectral.e.irrad <- action.f(wavelengths) * spectral.e.irrad
    # this should be improved to better handle the ends of BWSFs when wavelength step is large.
    integrated.dose <- 0.0
    for (i in 1:(length(wavelengths)-1)){
      integrated.dose <- integrated.dose +
        ((weighted.spectral.e.irrad[i] +
        weighted.spectral.e.irrad[i+1]) / 2 * 
        (wavelengths[i+1]-wavelengths[i]))
    }
    return(integrated.dose)
}

