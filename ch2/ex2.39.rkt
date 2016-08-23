#lang scheme

(define (fold-right op initial seq)
  (if(null? seq)
     initial
     (op (car seq) (fold-right op initial (cdr seq))))
  )

(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
(iter initial sequence))


(define (reverse sequence)
(fold-right (lambda (x y) (append y (list x))) null sequence))


(reverse (list 1 2 3 4))

(define (reverse2 sequence)
(fold-left (lambda (x y) (append (list y) x)) null sequence))

(reverse2 (list 1 2 3 4))