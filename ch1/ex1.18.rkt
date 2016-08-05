#lang scheme

(define (double x)
        (* 2 x)
  )
(define (halve x)
       (if(= (remainder x 2) 0)
             (/ x 2)
             0
          )
  )

(define (mult a b)
     (cond
       ((= b 0) 0 )
       ((= (remainder b 2) 0 ) (mult (double a) (halve b) ))
       (else (+ a (mult a (- b 1))))
       )
  )


; 2 2 2 2 2 2

(mult 2 3)