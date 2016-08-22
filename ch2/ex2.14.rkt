#lang scheme
(define (upper-bound int)(max (cdr int) (car int)))
;;
(define (lower-bound int)(min (cdr int) (car int)))
;;
(define (make-center-width c w)
(make-interval (- c w) (+ c w)))
;;
(define (center i)
(/ (+ (lower-bound i) (upper-bound i)) 2))
;;
(define (width i)
(/ (- (upper-bound i) (lower-bound i)) 2))
;;
(define (make-interval-center-percentage cent per)
  (define p (/ (* cent per) 100))
      (make-interval (- cent p) (+ cent p))
      )
;;
(define (percent int)
  (- (center int) (lower-bound int)))
;;
(define (make-interval a b)(cons a b))
;;
(define (div-interval x y)
(mul-interval x
(make-interval (/ 1.0 (upper-bound y))
(/ 1.0 (lower-bound y)))))
;;
(define (mul-interval x y)
(let ((p1 (* (lower-bound x) (lower-bound y)))
(p2 (* (lower-bound x) (upper-bound y)))
(p3 (* (upper-bound x) (lower-bound y)))
(p4 (* (upper-bound x) (upper-bound y))))
(make-interval (min p1 p2 p3 p4)
(max p1 p2 p3 p4))))
;;

(define (add-interval x y)
(make-interval (+ (lower-bound x) (lower-bound y))
(+ (upper-bound x) (upper-bound y))))
;;
(define (par1 r1 r2)
(div-interval (mul-interval r1 r2)
             (add-interval r1 r2)
))
;;
(define (par2 r1 r2)
(let ((one (make-interval 1 1)))
(div-interval one
(add-interval (div-interval one r1)
(div-interval one r2))))
  )


(define r1 (make-interval-center-percentage 32 0.8))
(define r2 (make-interval-center-percentage 32 0.8))
(newline)
(display "width")(newline)
(width r1)
(width r2)

(newline)(display "formulae")(newline)
(par1 r1 r2)
(par2 r1 r2)
(newline)(newline)


(div-interval r1 r1)
(div-interval r2 r2)


;; if percentage tolerances are less than reults are
;; less error. error increases with increase in percentage
;; tolerance.