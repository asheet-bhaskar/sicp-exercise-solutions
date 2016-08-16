#lang scheme


(define (list-reverse items rev)
    (if (null? items)
         rev
         (list-reverse (cdr items) (cons (car items) rev))
        )
  )
;(display (list-reverse (car items) null))

(define (deep-reverse items rev)
  (if(null? items)
      rev
      (begin
        (if(list? (car items))
           (deep-reverse (cdr items) (cons (list-reverse (car items) null) rev) )
           (deep-reverse (cdr items) (cons (car items) rev)))
           )
        
        )) 


(define rev (list ))
(define list1 (list 1 2 11 13 (list 3 -1 4 0) (list 5 6 7 8)))
(list-reverse list1 rev )

(deep-reverse list1 rev)
(newline)
list1