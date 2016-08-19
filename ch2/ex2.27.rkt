#lang scheme
(require racket/trace)

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
        (if(pair? (car items))
           (deep-reverse (cdr items) (cons (list-reverse (car items) null) rev) )
           (deep-reverse (cdr items) (cons (car items) rev)))
           )
        
        ))

(define (deep-reverse2 items)
  (define (iter items rev)
    (cond
      ((null? items) rev)
      ((pair? (car items)) (iter (cdr items) (cons (iter (car items) null) rev)))
      (else
        (iter (cdr items) (cons (car items) rev))
       )
       ))
   (iter items null)
  )






(define rev (list ))
(define list1 (list 1 2  (list 3 -1 ) (list 5 (list 6 (list 7 -7)) 8)))
(list-reverse list1 rev )

(deep-reverse list1 rev)
(newline)
list1
(newline)
(trace deep-reverse2)
(deep-reverse2 list1)