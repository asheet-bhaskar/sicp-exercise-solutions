#lang scheme

(define (mul-interval x y)
(let ((p1 (* (lower-bound x) (lower-bound y)))
(p2 (* (lower-bound x) (upper-bound y)))
(p3 (* (upper-bound x) (lower-bound y)))
(p4 (* (upper-bound x) (upper-bound y))))
(make-interval (min p1 p2 p3 p4)
(max p1 p2 p3 p4))))

(define (make-interval a b)(cons a b))

(define (make-center-width c w)
(make-interval (- c w) (+ c w)))

(define (center i)
(/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
(/ (- (upper-bound i) (lower-bound i)) 2))


(define (make-interval-center-percentage cent per)
  (define p (/ (* cent per) 100))
      (make-interval (- cent p) (+ cent p))
      )

(define (percent int)
  (/  (* 100 (width int)) (center int) )) 
  

(define (upper-bound int)(cdr int))

(define (lower-bound int)(car int))



(define int (make-interval-center-percentage  42 2.3))
(define int2 (make-interval-center-percentage  30 1.7))

(percent int)
(percent int2)

(percent (mul-interval int int2))

;; description

;; (x-a)(x+a)     X         (y-a)(y+b)
;; (x-a) x (y-b)  .. (x+a) x (y+b)
;; (xy -xb -ay +ab)  .. (xy + xb + ay + ab)  since percentage tolerance is small
;; ignore ab from both terms
;; (xy - (ay + xb))     ...      (xy + (ay + xb))
;; xy(1- (a/x + b/y))   ...      xy(1+ (a/x + b/y))

#|
   for small percentage tolerances the percentage tolerance of product of intervals
   is nearly the sum of individual percentage tolerances.
|#

