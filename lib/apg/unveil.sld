(define-library (apg unveil)
  (export unveil)
  (import (chibi))
  (cond-expand
     (bsd
        (include-shared "unveil"))
     (else
        (define (unveil a b) 0))))
