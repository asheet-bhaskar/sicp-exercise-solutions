#lang scheme

(define (make-interval a b)(cons a b))

(define (div-interval x y)
(mul-interval x
(make-interval (/ 1.0 (upper-bound y))
(/ 1.0 (lower-bound y)))))

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

(define (sub-interval x y)
(make-interval (- (lower-bound x) (upper-bound y))
(- (upper-bound x) (lower-bound y))))

(define (upper-bound int)(cdr int))

(define (lower-bound int)(car int))

(define (width int)(/ (- (upper-bound int) (lower-bound int)) 2))

(define int (make-interval 1 9))
(define int2 (make-interval 14 27))

(define addi (add-interval int int2))
(define subi (sub-interval int int2))
(define muli (mul-interval int int2))
(define divi (div-interval int int2))


(width int)
(width int2)
(newline)
(width addi)
(width subi )
;; for addition and subtraction width of added/ subtracted interval is the sum/ subtraction of
;; width of respective intervals
(newline)
(width muli)
(width divi)

;; In this case upper bound of combined interval not depends on individual intervals only and
;; same goes for lower bound.

