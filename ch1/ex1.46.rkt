#lang scheme

(define tolerance 0.001)

(define (sq x)(* x x))

(define (avg a b)(/ (+ a b) 2))

(define (iterative-improve good-enough? improve )
  (define (iter-imp x)
    (if(good-enough? x)
         x
         (iter-imp (improve x))
       )
    ) iter-imp
  )
 
(define (sqrt x)
  ((iterative-improve
   (lambda (guess) (< (abs (- (sq guess) x))tolerance))
   (lambda (guess) (avg guess (/ x guess)))
   ) 1.0)
  )

(define (fixed-point f )
   ((iterative-improve
   (lambda (guess) (< (abs (- (f guess) guess))tolerance))
   (lambda (guess) (f guess))
   ) 1.0))
  

(fixed-point (lambda (x)(+ 1 (/ 1 (* x x)))) )

(sqrt 16)

(fixed-point (lambda (x)(+ 1 (/ 1 x))) )