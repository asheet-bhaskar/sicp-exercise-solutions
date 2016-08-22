#lang scheme

(define list1 (list 1 2 3 4 5 6 7 8))
(define list2 (list 9 10 11 12 13))

(define (list-ref list n)
  (if(= n 0)
     (car list)
     (list-ref (cdr list) (- n 1))
  ))

(define (list-length list)
  (if(null? list)
     0
     (+ 1 (list-length(cdr list))))
  )

(define (lists-append list1 list2)
  (if(null? list1)
     list2
     (cons (car list1) (append (cdr list1) list2))
     )
  )



(define la (append list1 list2))

la
(list-length la)
(list-ref la 9)