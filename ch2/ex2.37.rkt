#lang scheme

(require racket/trace)

(define (accumulate op initial seq)
  (if(null? seq)
     initial
     (op (car seq) (accumulate op initial (cdr seq))))
  )

(define (dot-product u v)(accumulate + 0 (map * u v)))

(define (mat-*-vect m v)
  (if(null? m)
     null
     (append (list (dot-product (car m) v)) (mat-*-vect (cdr m) v))))

(define (mat-*-mat m n)
  (if(null? m)
     null
     (append (list (mat-*-vect n (car m))) (mat-*-mat (cdr m) n) )))

(define (transpose m)
  (if(null? (car m))
     null 
     (append (list (map car m) ) (transpose (map cdr m)) )
     ))

(define (display_mat m)(if(null? m)
                          (newline)
                          (begin
                            (display (car m))(newline)
                            (display_mat (cdr m))
                            )))

(define mat (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)))

(dot-product (car mat) (car (cdr mat)))

(mat-*-vect mat (car mat))


;(trace transpose)

mat
(transpose mat)


(mat-*-vect mat (list 1 2 3 4))      ;; mat * v  (m X n) (n X 1)

(display_mat mat)

(display_mat (transpose mat))
(display_mat (mat-*-mat mat mat))