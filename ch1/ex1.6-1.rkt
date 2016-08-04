#lang scheme


(define (new-if predicate then-clause else-clause)
(cond (predicate then-clause)
(else else-clause)))

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
        (new-if (good-enough g x)  g (sqrt (improve g x) x)  )
  )





(sqrt 1 2)




;; Explanation
; when we use new if statement result will not be true. We checked whether the current guess is good enough to
; be square root of the number x, if not then a recursive call is made to same function sqrt.  But when we use new-if,
; basically we are sending three arguments to new-if procedure. It means all threeause arguments will be evaluated. So
; third argument that is a procedure call to another procedure, will be evaluated without any need for evaluation.
; This can result into wrong results.  In file "ex1.6-2" i made a correction to make this code run with new-if