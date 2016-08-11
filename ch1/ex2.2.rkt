#lang scheme

(define (make-segment p1 p2)(cons p1 p2))
(define (start-segment s)(car s))
(define (end-segment s)(cdr s))

(define (midpoint-segment s)
  (cons (/ (+ (car (car s)) (car (cdr s))) 2) (/ (+ (car (cdr s)) (cdr (cdr s))) 2))
  )

(define (make-point x y)(cons x y))

(define (x-point p)(car p))

(define (y-point p)(cdr p))


(define (print-point p)
(newline)
(display "(")
(display (x-point p))
(display ",")
(display (y-point p))
(display ")")
  (newline))


(define p1 (make-point 1 2))
(define p2 (make-point 2 7))

(print-point p1)
(print-point p2)

(define s (make-segment p1 p2))
(start-segment s)
(end-segment s)
(midpoint-segment s)