#lang scheme

(define (list-reverse items rev)
    (if (null? items)
         rev
         (list-reverse (cdr items) (cons (car items) rev))
        )
  )
(define (list-length list)
  (if(null? list)
     0
     (+ 1 (list-length(cdr list))))
  )



(define rev (list ))
(define list1 (list 1 2 3 4 5 6 7 8))
(list-reverse list1 rev )