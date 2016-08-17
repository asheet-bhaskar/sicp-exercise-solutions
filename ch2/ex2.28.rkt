#lang scheme

#|
(define x (list (list 1 2) (list 3 4)))
(fringe x)
(1 2 3 4)
(fringe (list x x))
(1 2 3 4 1 2 3 4)
|#


(define (fringe li)
  (cond
    ((null? li) null)
    ((not (list? (car li))) (append (cons (car li) null) (fringe (cdr li))))
    (else (append (fringe (car li)) (fringe (cdr li)))))
   )
 

(define x (list 0 (list 1 2) (list 3 4)))
(fringe (list 1))
(fringe x )
(fringe (list x x) )
(fringe (list (list x x) (list x x)))
;(1 2 3 4 1 2 3 4)

