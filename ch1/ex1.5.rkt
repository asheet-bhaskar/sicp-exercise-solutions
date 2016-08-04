#lang scheme

(define (p) (p))

(define (test x y)
(if (= x 0) 0
y))


(test 0 (p))



; normal order evaluation
; (test 0 (p))
; (if (= 0 0) 0 (p))
; 0


; applicative order evaluation
; (test 0 (p))
; first arguments will be evaluated and second argument is a call to recursive procedure with no base case i.e. infinite recursion