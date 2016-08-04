#lang scheme
; code with correction to make code in file "ex1.6-1.rkt" run.

(define (new-if predicate then-clause x)
(cond (predicate then-clause)
(else (sqrt (improve then-clause x) x))))

(define (sq x)
  (* x x)
  )

(define (abs x)
       (if (< x 0)
           (- x)
           x
           )
  )


(define (improve g x)
       (/ (+ (/ x g) g) 2)
  )

(define (good-enough g x)
      (if (< (abs (- (sq g) x)) 0.01)
          true
          false
          )
  )


(define (sqrt g x)
        (new-if (good-enough g x)  g x  )
  )





(sqrt 1 5)