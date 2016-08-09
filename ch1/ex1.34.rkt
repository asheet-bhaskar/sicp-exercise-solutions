#lang scheme


(define (f g)(g 2))

;; (f f)
;  (f 2)
;  (2 2)  this is an error as first 2 is not a procedure
