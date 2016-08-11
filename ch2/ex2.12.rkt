#lang scheme

(define (make-interval a b)(cons a b))

(define (make-center-width c w)
(make-interval (- c w) (+ c w)))

(define (center i)
(/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
(/ (- (upper-bound i) (lower-bound i)) 2))


(define (make-center-percentage cent per)
  (make-interval (- cent per) (+ cent per) ))

(define (percent int)
  (- (center int) (lower-bound int)))

(define (upper-bound int)(cdr int))

(define (lower-bound int)(car int))


(define int (make-interval 1 8))
(make-center-percentage (center int) (percent int))
(percent int)
(center int)