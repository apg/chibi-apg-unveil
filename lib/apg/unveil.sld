(define-library (apg unveil)
  (export unveil)
  (import (chibi))
  (cond-expand
     (chibi
        (cond-expand
             (openbsd (include-shared "unveil"))
             (else (define (unveil a b) 0))))
     (else #f)))
        
