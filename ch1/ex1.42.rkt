#lang scheme

(define (compose f g)(lambda(x) (f (g x))))

(define (sq x)(* x x))

(define (inc x)(+ x 1))

((compose sq inc) 7)
