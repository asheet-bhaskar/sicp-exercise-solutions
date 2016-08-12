#lang scheme

(define (last-pair list1)
  (if(null? (cdr list1) )
       (list (car list1))
       (last-pair (cdr list1))
     )
  )

(define list1 (list 1 2 3 4 5 6 7))

(last-pair list1)