# SpectralMM

Spectral majorization for statistical estimation.

This is an independently installable R source package. It contains the R
interface and a source snapshot of the shared C++ core. No Julia or Python
installation is required. Rcpp and RcppEigen must be installed; source builds
require a C++17 compiler. R compiles the core during installation.

```r
install.packages(c("Rcpp", "RcppEigen"))
# Install this source directory with R CMD INSTALL .
library(SpectralMM)
fit <- spectralmm_glm(X, y, family = binomial("logit"))
formula_fit <- spectralmm_glm(y ~ x1 + x2, data = dat, family = binomial("logit"))
summary(fit)
```

Use help(package="SpectralMM") for the function reference. This directory is
generated; edit the canonical repository sources and regenerate it.
