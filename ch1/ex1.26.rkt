#lang scheme

(define (expmod base exp m)
(cond ((= exp 0) 1)
((even? exp)
(remainder (* (expmod base (/ exp 2) m)
(expmod base (/ exp 2) m))
m))
(else
(remainder (* base (expmod base (- exp 1) m))
m))))



;; Here we are calling expmod twice whereas with square instead of multiplication we were calling expmod jurecursion.st once.
;  So with multiplication redundant evalautaions will take place and will result into tree recursion where as with
; call to square it will be linear .