#lang scheme

(define t1 (cons (list 1 2 ) (list 3 4)))
; (cons (list 5 6) (list 5 6))

(define (count-leaves tree)
  (cond
    ((null? tree) 0)
    ((not(pair? tree)) 1)
    (else (+ (count-leaves (car tree)) (count-leaves (cdr tree))))
    ))


(count-leaves t1)

