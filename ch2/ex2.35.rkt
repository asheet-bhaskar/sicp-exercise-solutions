#lang scheme

(define x (cons (list 1 2) (list 3 4)))

(define (enumerate-tree tree)
   (cond ((null? tree) null)
         ((not (pair? tree)) (list tree))
        (else (append (enumerate-tree (car tree))
                       (enumerate-tree (cdr tree))))))

(define (accumulate op initial seq)
  (if(null? seq)
     initial
     (op (car seq) (accumulate op initial (cdr seq)))))

(define (count-leaves t)
   (accumulate + 0 (map (lambda (x) 1)
                        (enumerate-tree t))))


(count-leaves (list x x))

;(enumerate-tree x)

