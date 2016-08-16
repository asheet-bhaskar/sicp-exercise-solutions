#lang scheme

(define (square-list1 items)
(if (null? items)
null
(cons (* (car items) (car items)) (square-list1 (cdr items)))))


(define (square-list items)
(map (lambda (x)(* x x)) items))


(square-list1 (list 1 2 3 4 5))