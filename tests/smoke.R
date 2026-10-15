library(SpectralMM)
set.seed(71)
X <- matrix(rnorm(300), 100, 3); y <- rbinom(100, 1, 0.5)
fit <- spectralmm_fit(X, y, family="probit", accept_stalled=FALSE)
stopifnot(length(coef(fit))==4, all(is.finite(predict(fit,X))),
          fit$info$gradient_converged, fit$inference$status=="ok")
