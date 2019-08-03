(define-library (apg unveil)
  (export unveil)
  (import (chibi))
  (cond-expand
     (openbsd
        (include-shared "unveil"))
     (else
        (define (unveil a b) 0))))
