#lang scheme

(define (square x )(* x x))

(define (cube x )(* x x x))

(define (inc a) (+ a 1))

(define (range-sum a b)
   (if(> a b)
      0
      (+ a (range-sum (+ a 1) b)))
  )

(range-sum 1 10000)

(define (range-squared-sum a b)
   (if(> a b)
      0
      (+ (square a) (range-squared-sum (+ a 1) b)))
  )

(range-squared-sum 1 3)

(define (pi-sum a b)
  (if(> a b)
     0
     (+ (/ 1.0 (* a (+ a 2))) (pi-sum (+ a 1) b)))
  )
(pi-sum 1 4)





(define (sum term a next b)
  (if (> a b)
  0
  (+ (term a) (sum term (next a) next b)))
  )

(define (sum-cubes a  b)
   (sum cube a inc b)
  )

(sum-cubes 1 3)