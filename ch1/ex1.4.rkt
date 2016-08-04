#lang scheme
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))


(a-plus-abs-b  2 (- 2 10))


; using substitution model (evaluation of procedure call
; (a-plus-abs-b  2 (- 2 10))
; (a-plus-abs-b  2 -8)
; ((if (> -8 0) + -) 2 -8))
; (- 2 -8)
; 10