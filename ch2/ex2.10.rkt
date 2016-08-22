#lang scheme


(define (div-interval x y)
  (if(or (= (lower-bound y) 0) (= (upper-bound y) 0))
      (display "Divisor interval spans zero! Division by zero is not defined.")
      (mul-interval x
(make-interval (/ 1.0 (upper-bound y))
(/ 1.0 (lower-bound y))))
     )
)

(define (mul-interval x y)
(let ((p1 (* (lower-bound x) (lower-bound y)))
(p2 (* (lower-bound x) (upper-bound y)))
(p3 (* (upper-bound x) (lower-bound y))) 
(p4 (* (upper-bound x) (upper-bound y))))
(make-interval (min p1 p2 p3 p4)
(max p1 p2 p3 p4))))


(define (add-interval x y)
(make-interval (+ (lower-bound x) (lower-bound y))
(+ (upper-bound x) (upper-bound y))))



(define (make-interval a b) (cons a b))


(define (upper-bound int)(max (cdr int) (car int)))

(define (lower-bound int)(min (cdr int) (car int)))

(define int (make-interval -1 10))
(define int2 (make-interval 0 19))

(div-interval int int2)