#lang scheme
(define (accumulate op initial seq)
  (if(null? seq)
     initial
     (op (car seq) (accumulate op initial (cdr seq))))
  )

(define (accumulate-n op init li)
  (if (null? (car li))
      null
      (cons (accumulate op init (map car li))
            (accumulate-n op init (map  cdr li))
            )
      )
  )
(define (dot-product u v)(accumulate + 0 (map * u v)))

(define (transpose mat)
(accumulate-n (lambda (x y)(append (list x) y)) null mat))

(define mat (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)))

(transpose mat)

(define (display_mat m)(if(null? m)
                          (newline)
                          (begin
                            (display (car m))(newline)
                            (display_mat (cdr m))
                            )))
(display_mat mat)
(display_mat (transpose mat))

(define (matrix-*-vector m v)
  (map (lambda (row) (dot-product row v)) m))


(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (row) (map (lambda (col)
                              (dot-product col row))
                            cols))
         m)))

(display_mat (matrix-*-vector mat (car mat)))

(display_mat (matrix-*-matrix mat (transpose mat)))