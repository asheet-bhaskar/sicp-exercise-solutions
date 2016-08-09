#lang scheme

(define (double proc)(lambda (x) (proc (proc x))))

(define (inc n)(+ n 1))


((double inc) 5)

(((double (double double)) inc) 5)