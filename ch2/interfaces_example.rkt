#lang scheme

(define (odd? n)(not (= (remainder n 2) 0)))

(define (square x)(* x x))

(define (accumulate op initial seq)
  (if(null? seq)
     initial
     (op (car seq) (accumulate op initial (cdr seq)))))

(define (sum-sqaure-add seq)
  ())

