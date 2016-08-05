#lang scheme

(define (square n) (* n n))
 
(define (pow-iter p b n) 
     (cond ((= n 0) p) 
           ((= (remainder n 2) 0) (pow-iter p (square b) (/ n 2))) 
           (else (pow-iter (* p b) b (- n 1))))
     )


(pow-iter 1 2 3)