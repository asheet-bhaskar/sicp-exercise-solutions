#lang scheme

(define (make-interval a b)(cons a b))

(define (make-center-width c w)
(make-interval (- c w) (+ c w)))

(define (center i)
(/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
(/ (- (upper-bound i) (lower-bound i)) 2))

#|
(define (make-interval-center-percentage cent per)
  (make-interval (- cent per) (+ cent per) ))|#

(define (make-interval-center-percentage cent per)
  (define p (/ (* cent per) 100))
      (make-interval (- cent p) (+ cent p))
      )

(define (percent int)
  (/  (* 100 (width int)) (center int) )) 
  

(define (upper-bound int)(max (cdr int) (car int)))

(define (lower-bound int)(min (cdr int) (car int)))

(define (mul-interval x y)
(let ((p1 (* (lower-bound x) (lower-bound y)))
(p2 (* (lower-bound x) (upper-bound y)))
(p3 (* (upper-bound x) (lower-bound y)))
(p4 (* (upper-bound x) (upper-bound y))))
(make-interval (min p1 p2 p3 p4)
(max p1 p2 p3 p4))))

(define int (make-interval 10.0 40.0))
(define int2 (make-interval 5.0 10.0))
#|
(make-center-percentage (center int) (percent int))
(percent int)
(center int) |#


(width int)
(center int)
(percent int)
(newline)
(make-interval-center-percentage  (center int) (percent int))
#|
(percent int2)
(newline)

(mul-interval int int2)
(percent (mul-interval int int2))|#

