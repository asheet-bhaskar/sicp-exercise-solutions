#lang scheme
(define (accumulate op initial seq)
  (if(null? seq)
     initial
     (op (car seq) (accumulate op initial (cdr seq))))
  )

(define (dot-product u v)(accumulate + 0 (map * u v)))

(define (matrix-*-vector mat v)
(map (lambda (x) (accumulate append (list (dot-product (car x) v)) (matrix-*-vector (cdr mat) v) )) mat))

#|
(define (transpose mat)
(accumulate-n <??> <??> mat))

(define (matrix-*-matrix m n)
(let ((cols (transpose n)))
(map <??> m)))|#

(define mat (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)))

(matrix-*-vector mat (car mat))