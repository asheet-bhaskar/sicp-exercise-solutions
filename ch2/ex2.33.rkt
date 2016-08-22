#lang scheme

(require racket/trace)

(define (square x)(* x x))

(define (accumulate op initial sequence)
(if (null? sequence)
initial
(op (car sequence)
(accumulate op initial (cdr sequence)))))


;; Map


#|
(define (map proc items)
(if (null? items)
nil
(cons (proc (car items))
(map proc (cdr items)))))
|#

(define (map p sequence)
(accumulate (lambda (x y) (cons (p x) y)) null sequence))

(map square (list  1 2 3))

#|
  (map square (list  1 2 3))
  (accumulate (lambda (x y) (cons (p x) y)) null (list 1 2 3))

   (op 1  (accumulate (lambda (x y) (cons (p x) y)) null sequence))

   (op 1  (op 2 (accumulate (lambda (x y) (cons (p x) y)) null (3))))

   (op 1  (op 2 (op 3(accumulate (lambda (x y) (cons (p x) y)) null ()))))

   (op 1  (op 2 (op 3 null)))

   (op 1  (op 2 (cons (square 3) null)))
   (op 1  (op 2 9))
   (op 1  (op 2 (cons (square 2) 9)))
    (op 1  (4 9))
   (cons (square 1) (4 9))
   (1 4 9)
|#

;; Length

(define (length sequence)
(accumulate (lambda (x y)(+ 1 y)) 0 sequence))


(trace length)
(length (list 1 2 3  ))

#|
  (length (list 1 2 3 ))
(accumulate (lambda (x y)(+ 1 y)) 0 (list 1 2 3 ))

 (op 1
(accumulate op initial (list 2 3  )))

 (op 1
(op 2
(accumulate op initial (list 3 ))))
 (op 1
(op 2
(op 3
(accumulate op initial (list )))))

 (op 1
(op 2
(op 3
0 )))

 (op 1
(op 2
 1))

 (op 1
2)

3

|#




(define (append seq1 seq2)
(accumulate cons seq2 seq1))

(append (list 1 2 3) (list 4 5 6))



